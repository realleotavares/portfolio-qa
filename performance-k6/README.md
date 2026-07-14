[Português](#português) | [English](#english) | [Español](#español)

<a id="português"></a>
# Portfólio de Testes de Carga com K6

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![K6](https://img.shields.io/badge/K6-7D64FF?logo=k6&logoColor=white)](https://k6.io/)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)](https://developer.mozilla.org/)

Bem-vindo ao módulo de Engenharia de Performance.
Este repositório foca em Testes de Carga, Stress, Soak e Spike utilizando o framework K6. Ele demonstra a capacidade de analisar gargalos arquiteturais e garantir que os serviços de backend (APIs) suportem alto tráfego concorrente, definindo SLAs diretamente no código.

## Arquitetura do Módulo

Os scripts estão isolados para testar APIs em sandboxes ou ambientes controlados.

```text
📁 performance-k6/
├── 📄 README.md                   # Este documento
│
├── 📁 restful-booker/             # Testes de Carga para API transacional
│   └── 📁 tests/
│       └── 📄 load_test.js        # Script de simulação de concorrência com Thresholds
│
└── 📁 tavardt/                    # Testes de Infraestrutura
    └── 📁 tests/
        └── 📄 infrastructure.js   # Script base de carga arquitetural
```

## Quick Start (Onboarding)

Quer rodar estes testes na sua máquina local?

**Pré-requisitos:** [K6](https://k6.io/docs/get-started/installation/) instalado na máquina.

```bash
# 1. Navegue para o diretório
cd performance-k6

# 2. Rode o teste de carga contra o Restful-Booker
k6 run restful-booker/tests/load_test.js
```

---
*Este módulo é governado por Acordos de Nível de Serviço (SLAs) codificados via Thresholds de Performance.*

<br><br><br>

<a id="english"></a>
# K6 Load Testing Portfolio

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![K6](https://img.shields.io/badge/K6-7D64FF?logo=k6&logoColor=white)](https://k6.io/)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)](https://developer.mozilla.org/)

Welcome to the Performance Engineering module.
This repository focuses on Load, Stress, Soak, and Spike testing using the K6 framework. It demonstrates the ability to analyze architectural bottlenecks and ensure backend services (APIs) can handle high concurrent traffic by defining SLAs directly in code.

## Module Architecture

Scripts are isolated to test APIs in sandboxes or controlled environments.

```text
📁 performance-k6/
├── 📄 README.md                   # This document
│
├── 📁 restful-booker/             # Load Tests for transactional API
│   └── 📁 tests/
│       └── 📄 load_test.js        # Concurrency simulation script with Thresholds
│
└── 📁 tavardt/                    # Infrastructure Tests
    └── 📁 tests/
        └── 📄 infrastructure.js   # Baseline architectural load script
```

## Quick Start (Onboarding)

Want to run these tests on your local machine?

**Prerequisites:** [K6](https://k6.io/docs/get-started/installation/) installed on your machine.

```bash
# 1. Navigate to the directory
cd performance-k6

# 2. Run the load test against Restful-Booker
k6 run restful-booker/tests/load_test.js
```

---
*This module is governed by Service Level Agreements (SLAs) encoded via Performance Thresholds.*

<br><br><br>

<a id="español"></a>
# Portafolio de Pruebas de Carga con K6

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![K6](https://img.shields.io/badge/K6-7D64FF?logo=k6&logoColor=white)](https://k6.io/)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)](https://developer.mozilla.org/)

Bienvenido al módulo de Ingeniería de Rendimiento.
Este repositorio se enfoca en Pruebas de Carga, Estrés, Soak y Spike utilizando el framework K6. Demuestra la capacidad de analizar cuellos de botella arquitectónicos y garantizar que los servicios de backend (APIs) soporten un alto tráfico concurrente, definiendo SLAs directamente en el código.

## Arquitectura del Módulo

Los scripts están aislados para probar APIs en sandboxes o entornos controlados.

```text
📁 performance-k6/
├── 📄 README.md                   # Este documento
│
├── 📁 restful-booker/             # Pruebas de Carga para API transaccional
│   └── 📁 tests/
│       └── 📄 load_test.js        # Script de simulación de concurrencia con Umbrales
│
└── 📁 tavardt/                    # Pruebas de Infraestructura
    └── 📁 tests/
        └── 📄 infrastructure.js   # Script base de carga arquitectónica
```

## Quick Start (Onboarding)

¿Quieres ejecutar estas pruebas en tu máquina local?

**Requisitos previos:** [K6](https://k6.io/docs/get-started/installation/) instalado en tu máquina.

```bash
# 1. Navegar al directorio
cd performance-k6

# 2. Ejecutar la prueba de carga contra Restful-Booker
k6 run restful-booker/tests/load_test.js
```

---
*Este módulo se rige por Acuerdos de Nivel de Servicio (SLAs) codificados mediante Umbrales de Rendimiento.*
