[Português](#português) | [English](#english) | [Español](#español)

<a id="português"></a>
# Portfólio de Automação de QA e Engenharia

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Playwright](https://img.shields.io/badge/Playwright-2EAD33?logo=playwright&logoColor=white)](https://playwright.dev/)
[![Pytest](https://img.shields.io/badge/Pytest-0A9EDC?logo=pytest&logoColor=white)](https://docs.pytest.org/)
[![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?logo=robotframework&logoColor=white)](https://robotframework.org/)
[![K6](https://img.shields.io/badge/K6-7D64FF?logo=k6&logoColor=white)](https://k6.io/)

> **[Acesse o Hub Central de Relatórios (Live Reports)](https://realleotavares.github.io/portfolio-qa/)** para visualizar as métricas, traces e logs da última execução da pipeline.

Bem-vindo à minha vitrine de Engenharia de Qualidade. Este repositório atua como um **Monorepo** centralizando o meu ecossistema completo de automação de testes.

## Filosofia de Testes Éticos

Este portfólio segue diretrizes éticas e profissionais rigorosas:
- **Testes Não Autorizados:** Não executamos scripts automatizados, testes de carga ou testes exploratórios de UI contra sistemas de produção de terceiros sem autorização explícita.
- **Sandboxes Autorizados:** Todos os testes neste portfólio visam sandboxes oficiais e reconhecidos para fins educacionais (ex: `saucedemo.com`, `the-internet.herokuapp.com`, `restful-booker.herokuapp.com`).
- **Validações Reais:** Não utilizamos `mocks` (como `@patch`) nos nossos testes de integração de API. Os testes executam chamadas HTTP reais e afirmam a integridade estrutural através de JSON Schemas.
- **Integração de Asserções:** Todo script de teste contém asserções robustas. Não escrevemos scripts exploratórios "cegos".

---

## Mapa Arquitetural

Em vez de manter uma coleção de projetos dispersos, consolidei minhas estratégias de teste neste Monorepo unificado. Cada pasta representa uma camada distinta da pirâmide de testes.

### 1. `e2e-playwright/` (Validação de UI Frontend)
Framework de testes End-to-End (E2E) utilizando Playwright e TypeScript.
- **Padrão de Projeto:** Adoção estrita do Page Object Model (POM) para máxima manutenibilidade.
- **Sandbox Alvo:** SauceDemo (Fluxo de Checkout) e The-Internet (Carregamento Dinâmico).
- **Competências:** Gerenciamento de elementos assíncronos, testes negativos e asserções visuais assertivas.

### 2. `api-pytest/` (Validação de Dados Backend)
Módulo dedicado à garantia de qualidade de backend, construído em Python e Pytest.
- **Padrão de Projeto:** Uso extensivo do `conftest.py` para injeção de fixtures (Autenticação, URLs Base).
- **Sandbox Alvo:** Restful-Booker (Operações CRUD).
- **Competências:** Requisições HTTP reais (sem mocks), validação de JSON Schema e verificação de integridade de dados (Create -> Update -> Delete).

### 3. `e2e-robot/` (Behavior Driven Development)
Automação de testes de UI utilizando Python e Robot Framework.
- **Padrão de Projeto:** Arquitetura Keyword-Driven isolando os passos técnicos do Playwright em um vocabulário de negócios de alto nível (`keywords.resource`).
- **Sandbox Alvo:** SauceDemo.
- **Competências:** Aproximação dos requisitos de negócio com a execução técnica via arquivos `.robot` altamente legíveis.

### 4. `performance-k6/` (Engenharia de Carga e Stress)
Testes de performance utilizando Grafana k6.
- **Padrão de Projeto:** Scripts modulares com o uso de Métricas Customizadas (`Trend`, `Rate`).
- **Sandbox Alvo:** Restful-Booker e ambiente de laboratório corporativo.
- **Competências:** Definição de Acordos de Nível de Serviço (SLAs) como código, através de Thresholds (ex: taxa de erro < 1%, p(95) < 2s).

---

## Pipeline CI/CD

Este monorepo é governado por uma pipeline unificada via GitHub Actions (`.github/workflows/ci.yml`). Cada envio para a branch `main` engatilha execuções em paralelo através das quatro camadas:
- **api-pytest:** Provisiona o ambiente Python e roda as suítes de integração.
- **e2e-playwright:** Provisiona Node, baixa o Chromium e roda as validações E2E.
- **e2e-robot:** Provisiona o `robotframework-browser` e executa os fluxos BDD.
- **performance-k6:** Baixa o K6 CLI no Ubuntu e atesta a velocidade da API.

**Conecte-se comigo:** [LinkedIn](https://www.linkedin.com/in/leovtavares/)

<br><br><br>

<a id="english"></a>
# QA & Engineering Automation Portfolio

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Playwright](https://img.shields.io/badge/Playwright-2EAD33?logo=playwright&logoColor=white)](https://playwright.dev/)
[![Pytest](https://img.shields.io/badge/Pytest-0A9EDC?logo=pytest&logoColor=white)](https://docs.pytest.org/)
[![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?logo=robotframework&logoColor=white)](https://robotframework.org/)
[![K6](https://img.shields.io/badge/K6-7D64FF?logo=k6&logoColor=white)](https://k6.io/)

> **[Access the QA Reports Hub (Live Reports)](https://realleotavares.github.io/portfolio-qa/)** to view metrics, traces, and logs from the latest pipeline execution.

Welcome to my Quality Engineering showcase. This repository serves as a **Monorepo** containing my complete test automation ecosystem.

## Ethical Testing Philosophy

This portfolio adheres to strict ethical and professional testing guidelines:
- **No Unauthorized Testing:** We do not run automated scripts, load tests, or exploratory UI tests against third-party production systems without explicit authorization.
- **Authorized Sandboxes Only:** All tests in this portfolio target officially recognized testing sandboxes (e.g., `saucedemo.com`, `the-internet.herokuapp.com`, `restful-booker.herokuapp.com`).
- **Real Validations:** We do not use `mocks` or `@patch` in our integration API tests. Our tests execute real HTTP calls against sandbox APIs and assert structural and data integrity via JSON Schemas.
- **Assertion Completeness:** Every single test script contains robust assertions. We do not write "blind" exploratory scripts.

---

## Architectural Map

Rather than building a scattered set of projects, I have consolidated my testing strategies into this unified Monorepo. Each folder represents a distinct layer of the testing pyramid.

### 1. `e2e-playwright/` (Frontend UI Validation)
End-to-End (E2E) testing framework utilizing Playwright and TypeScript.
- **Design Pattern:** Strict adherence to the Page Object Model (POM) for maximum maintainability.
- **Target Sandbox:** SauceDemo (Standard User Checkout Flow) and The-Internet (Dynamic Loading).
- **Competencies:** Handling asynchronous UI elements, negative testing, and robust visual assertions.

### 2. `api-pytest/` (Backend Data Validation)
A dedicated backend quality assurance module built with Python and Pytest.
- **Design Pattern:** Extensive use of `conftest.py` for fixture injection (Authentication, Base URLs).
- **Target Sandbox:** Restful-Booker (CRUD Operations).
- **Competencies:** Real HTTP requests (no mocks), JSON Schema validation using `jsonschema`, and stateful data verification.

### 3. `e2e-robot/` (Behavior Driven Development)
UI test automation using Python and Robot Framework.
- **Design Pattern:** Keyword-Driven architecture isolating technical Playwright steps into high-level business vocabulary (`keywords.resource`).
- **Target Sandbox:** SauceDemo.
- **Competencies:** Bridging the gap between business requirements and technical execution via readable `.robot` files.

### 4. `performance-k6/` (Load & Stress Engineering)
Performance testing using Grafana k6.
- **Design Pattern:** Modular scripts utilizing custom Metrics (`Trend`, `Rate`).
- **Target Sandbox:** Restful-Booker and corporate laboratory environments.
- **Competencies:** Defining Service Level Agreements (SLAs) as code through Thresholds (e.g., error rate < 1%, p(95) < 2s).

---

## CI/CD Pipeline

This monorepo is governed by a unified GitHub Actions pipeline (`.github/workflows/ci.yml`). Every push to the `main` branch triggers parallel test executions across all four testing layers:
- **api-pytest:** Provisions a Python environment and runs the integration tests.
- **e2e-playwright:** Provisions a Node environment, installs Chromium, and runs the E2E specs.
- **e2e-robot:** Provisions Python, installs `robotframework-browser`, and executes the BDD specs.
- **performance-k6:** Provisions the K6 CLI on Ubuntu and validates the API thresholds.

**Connect with me:** [LinkedIn](https://www.linkedin.com/in/leovtavares/)

<br><br><br>

<a id="español"></a>
# Portafolio de Automatización de QA e Ingeniería

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Playwright](https://img.shields.io/badge/Playwright-2EAD33?logo=playwright&logoColor=white)](https://playwright.dev/)
[![Pytest](https://img.shields.io/badge/Pytest-0A9EDC?logo=pytest&logoColor=white)](https://docs.pytest.org/)
[![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?logo=robotframework&logoColor=white)](https://robotframework.org/)
[![K6](https://img.shields.io/badge/K6-7D64FF?logo=k6&logoColor=white)](https://k6.io/)

> **[Acceda al Centro de Reportes de QA (Live Reports)](https://realleotavares.github.io/portfolio-qa/)** para visualizar métricas, traces y registros de la última ejecución del pipeline.

Bienvenido a mi vitrina de Ingeniería de Calidad. Este repositorio funciona como un **Monorepo** centralizando mi ecosistema completo de automatización de pruebas.

## Filosofía de Pruebas Éticas

Este portafolio sigue directrices éticas y profesionales estrictas:
- **Pruebas No Autorizadas:** No ejecutamos scripts automatizados, pruebas de carga o pruebas exploratorias de UI contra sistemas de producción de terceros sin autorización explícita.
- **Sandboxes Autorizados:** Todas las pruebas en este portafolio están dirigidas a sandboxes oficiales y reconocidos con fines educativos (ej: `saucedemo.com`, `the-internet.herokuapp.com`, `restful-booker.herokuapp.com`).
- **Validaciones Reales:** No utilizamos `mocks` (como `@patch`) en nuestras pruebas de integración de API. Las pruebas ejecutan llamadas HTTP reales y verifican la integridad estructural a través de JSON Schemas.
- **Integridad de Aserciones:** Todo script de prueba contiene aserciones robustas. No escribimos scripts exploratorios "ciegos".

---

## Mapa Arquitectónico

En lugar de mantener una colección de proyectos dispersos, he consolidado mis estrategias de prueba en este Monorepo unificado. Cada carpeta representa una capa distinta de la pirámide de pruebas.

### 1. `e2e-playwright/` (Validación de UI Frontend)
Framework de pruebas End-to-End (E2E) utilizando Playwright y TypeScript.
- **Patrón de Diseño:** Adopción estricta del Page Object Model (POM) para máxima mantenibilidad.
- **Sandbox Objetivo:** SauceDemo (Flujo de Checkout) y The-Internet (Carga Dinámica).
- **Competencias:** Manejo de elementos asíncronos, pruebas negativas y aserciones visuales asertivas.

### 2. `api-pytest/` (Validación de Datos Backend)
Módulo dedicado a la garantía de calidad de backend, construido en Python y Pytest.
- **Patrón de Diseño:** Uso extensivo de `conftest.py` para la inyección de fixtures (Autenticación, URLs Base).
- **Sandbox Objetivo:** Restful-Booker (Operaciones CRUD).
- **Competencias:** Peticiones HTTP reales (sin mocks), validación de JSON Schema y verificación de la integridad de los datos.

### 3. `e2e-robot/` (Behavior Driven Development)
Automatización de pruebas de UI utilizando Python y Robot Framework.
- **Patrón de Diseño:** Arquitectura Keyword-Driven aislando los pasos técnicos de Playwright en un vocabulario de negocios de alto nivel (`keywords.resource`).
- **Sandbox Objetivo:** SauceDemo.
- **Competencias:** Aproximación de los requisitos de negocio a la ejecución técnica mediante archivos `.robot` altamente legibles.

### 4. `performance-k6/` (Ingeniería de Carga y Estrés)
Pruebas de rendimiento utilizando Grafana k6.
- **Patrón de Diseño:** Scripts modulares con el uso de Métricas Personalizadas (`Trend`, `Rate`).
- **Sandbox Objetivo:** Restful-Booker y entornos de laboratorio corporativos.
- **Competencias:** Definición de Acuerdos de Nivel de Servicio (SLAs) como código mediante Umbrales/Thresholds (ej: tasa de error < 1%, p(95) < 2s).

---

## Pipeline CI/CD

Este monorepo es gobernado por un pipeline unificado mediante GitHub Actions (`.github/workflows/ci.yml`). Cada push a la rama `main` desencadena ejecuciones paralelas a través de las cuatro capas:
- **api-pytest:** Provisiona el entorno Python y ejecuta las suites de integración.
- **e2e-playwright:** Provisiona Node, descarga Chromium y ejecuta las validaciones E2E.
- **e2e-robot:** Provisiona `robotframework-browser` y ejecuta los flujos BDD.
- **performance-k6:** Descarga la CLI de K6 en Ubuntu y verifica la velocidad de la API.

**Conéctate conmigo:** [LinkedIn](https://www.linkedin.com/in/leovtavares/)
