import http from 'k6/http';
import { check, sleep } from 'k6';
import { htmlReport } from "https://raw.githubusercontent.com/benc-uk/k6-reporter/main/dist/bundle.js";

// Configuração do Teste de Carga
export const options = {
  stages: [
    { duration: '30s', target: 20 }, // Sobe gradualmente para 20 usuários virtuais (VUs) em 30 segundos
    { duration: '1m', target: 20 },  // Mantém 20 VUs por 1 minuto
    { duration: '30s', target: 0 },  // Reduz gradualmente para 0 VUs em 30 segundos
  ],
  thresholds: {
    // 95% das requisições devem ser concluídas em menos de 500ms
    http_req_duration: ['p(95)<500'],
    // Taxa de erro deve ser menor que 1%
    http_req_failed: ['rate<0.01'],
  },
};

const BASE_URL = 'https://ag.tavardt.com';

// Simulação do Comportamento do Usuário
export default function () {
  // 1. Acessa a página inicial
  const res = http.get(BASE_URL);
  
  // Validação: Garante que o status é 200 e a página carregou
  check(res, {
    'status is 200': (r) => r.status === 200,
    'page contains TAVARDT': (r) => r.body.includes('TAVARDT'),
  });

  // Pausa (think time) simulando o tempo de leitura do usuário
  sleep(1);
}

// Gera o Relatório Visual HTML
export function handleSummary(data) {
  return {
    "k6-report.html": htmlReport(data),
  };
}
