import http from 'k6/http';
import { check, sleep, group } from 'k6';
import { Trend, Rate } from 'k6/metrics';
import { htmlReport } from "https://raw.githubusercontent.com/benc-uk/k6-reporter/main/dist/bundle.js";

// Custom Metrics
const getBookingsTrend = new Trend('get_bookings_duration');
const errorRate = new Rate('error_rate');

// 1. Configuração e Thresholds baseados em SLAs reais
export const options = {
  stages: [
    { duration: '10s', target: 5 }, // Ramp up conservador para não derrubar o sandbox público
    { duration: '20s', target: 5 }, // Sustain the load
    { duration: '10s', target: 0 }, // Ramp down
  ],
  thresholds: {
    // 95% das requisições GET devem completar em menos de 10s devido ao cold-start do Heroku (Sandbox SLA)
    'get_bookings_duration': ['p(95)<10000'],
    // Taxa de erro global não pode ultrapassar 1%
    'error_rate': ['rate<0.01'],
    // Tempo de requisição geral não pode passar de 12s (99 percentil) tolerando a API pública
    'http_req_duration': ['p(99)<12000'],
  },
};

const BASE_URL = 'https://restful-booker.herokuapp.com';

export default function () {
  group('API Performance Validation', () => {
    // A. Buscando dados publicos
    const getRes = http.get(`${BASE_URL}/booking`, {
      tags: { name: 'GetBookings' }
    });
    
    getBookingsTrend.add(getRes.timings.duration);
    
    // B. Asserções rigorosas (Testando status e integridade da resposta)
    const success = check(getRes, {
      'Status is 200': (r) => r.status === 200,
      'Response is an array': (r) => Array.isArray(r.json()),
    });
    
    errorRate.add(!success);
  });

  // Pacing para simular tempo de resposta do usuário real e aliviar a API sandbox
  sleep(1);
}

export function handleSummary(data) {
  return {
    "k6-report.html": htmlReport(data),
  };
}
