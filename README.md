[Português](#português) | [English](#english) | [Español](#español)

<a id="português"></a>
# Portfólio de Automação de QA e Engenharia

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Playwright](https://img.shields.io/badge/Playwright-2EAD33?logo=playwright&logoColor=white)](https://playwright.dev/)
[![Pytest](https://img.shields.io/badge/Pytest-0A9EDC?logo=pytest&logoColor=white)](https://docs.pytest.org/)
[![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?logo=robotframework&logoColor=white)](https://robotframework.org/)
[![K6](https://img.shields.io/badge/K6-7D64FF?logo=k6&logoColor=white)](https://k6.io/)

Este repositório atua como um **Monorepo** centralizando um ecossistema completo de automação de testes focado em Engenharia de Qualidade.

O portfólio segue diretrizes éticas e profissionais rigorosas:
- **Testes Não Autorizados:** Não são executados scripts automatizados, testes de carga ou testes exploratórios de UI contra sistemas de produção de terceiros sem autorização explícita.
- **Sandboxes Autorizados:** Todos os testes neste portfólio visam sandboxes oficiais e reconhecidos para fins educacionais (ex: `saucedemo.com`, `the-internet.herokuapp.com`, `restful-booker.herokuapp.com`).
- **Validações Reais:** Não são utilizados `mocks` (como `@patch`) nos testes de integração de API. Os testes executam chamadas HTTP reais e afirmam a integridade estrutural através de JSON Schemas.
- **Integração de Asserções:** Todo script de teste contém asserções robustas. Não há scripts exploratórios "cegos".

---

## Maturidade Técnica & Visão de Negócio

Para além do código, este portfólio demonstra pensamento crítico de engenharia:
- **Clean State (Teardown Inteligente):** O framework de backend (Pytest) rastreia as entidades criadas e executa o `DELETE` via fixtures (yield), garantindo zero poluição na base de dados de testes.
- **Deep Assertions (Asserções Profundas):** Os testes E2E validam regras matemáticas (soma de taxas no carrinho) enquanto a API re-consulta endpoints (GET) para provar a persistência real em banco.
- **Resiliência (Anti-Flakiness):** Integração ativa de Smart Waits, Retries nativos (Playwright/Pytest) e Thresholds customizados (K6) para suportar latências de rede e "Cold Starts".

Consulte os pilares estratégicos de QA na pasta de documentação:
- [Plano Mestre de Testes](docs/TEST_PLAN.md)
- [Casos de Teste & Critérios de Aceite](docs/TEST_CASES_&_ACCEPTANCE.md)
- [Relatórios de Bugs e Infraestrutura](docs/BUG_REPORTS.md)
- [Simulador de Defeitos (Jira)](docs/JIRA_SIMULATION.md)
- [Matriz de Riscos](docs/RISK_MATRIX.md)
- [Changelog](CHANGELOG.md)

---

## Mapa Arquitetural

Em vez de manter uma coleção de projetos dispersos, as estratégias de teste foram consolidadas neste Monorepo unificado. Cada pasta representa uma camada distinta da pirâmide de testes.

### 1. [`e2e-playwright/`](./e2e-playwright) (Validação de UI Frontend)
Framework de testes End-to-End (E2E) utilizando Playwright e TypeScript.
- **Padrão de Projeto:** Adoção estrita do Page Object Model (POM) para máxima manutenibilidade.
- **Sandbox Alvo:** SauceDemo (Fluxo de Checkout) e The-Internet (Carregamento Dinâmico).
- **Competências:** Gerenciamento de elementos assíncronos, testes negativos e asserções visuais assertivas.

### 2. [`api-pytest/`](./api-pytest) (Validação de Dados Backend)
Módulo dedicado à garantia de qualidade de backend, construído em Python e Pytest.
- **Padrão de Projeto:** Uso extensivo do `conftest.py` para injeção de fixtures (Autenticação, URLs Base).
- **Sandbox Alvo:** Restful-Booker (Operações CRUD).
- **Competências:** Requisições HTTP reais (sem mocks), validação de JSON Schema e verificação de integridade de dados (Create -> Update -> Delete).

### 3. [`e2e-robot/`](./e2e-robot) (Behavior Driven Development)
Automação de testes de UI utilizando Python e Robot Framework.
- **Padrão de Projeto:** Arquitetura Keyword-Driven isolando os passos técnicos do Playwright em um vocabulário de negócios de alto nível (`keywords.resource`).
- **Sandbox Alvo:** SauceDemo.
- **Competências:** Aproximação dos requisitos de negócio com a execução técnica via arquivos `.robot` altamente legíveis.

### 4. [`performance-k6/`](./performance-k6) (Engenharia de Carga e Stress)
Testes de performance utilizando Grafana k6.
- **Padrão de Projeto:** Scripts modulares com o uso de Métricas Customizadas (`Trend`, `Rate`).
- **Sandbox Alvo:** Restful-Booker e ambiente de laboratório corporativo.
- **Competências:** Definição de Acordos de Nível de Serviço (SLAs) como código, através de Thresholds (ex: taxa de erro < 1%, p(95) < 2s).

### 5. [`api-db-integration/`](./api-db-integration) (Persistência & Mocking)
Infraestrutura Dockerizada validando integração profunda e isolamento.
- **Padrão de Projeto:** Pytest + SQLAlchemy + Wiremock.
- **Sandbox Alvo:** PostgreSQL (Docker) e Wiremock API.
- **Competências:** Asserções SQL Diretas e isolamento contra APIs terceiras instáveis (Mocking).

### 6. [`contract-tests/`](./contract-tests) (Pact Consumer Tests)
Garantia de que Front-end e Back-end não quebrem esquemas de comunicação.
- **Padrão de Projeto:** `pact-python` definindo JSON Schemas esperados.
- **Competências:** Testes de Contrato, Shift-Left extremo prevenindo falhas de integração.

---

## Pipeline CI/CD

Este monorepo é governado por uma pipeline unificada via GitHub Actions (`.github/workflows/ci.yml`). Cada envio para a branch `main` engatilha um ambiente conteinerizado via **Docker Compose** (Postgres + Wiremock) e execuções em paralelo através das camadas:
- **api-pytest:** Provisiona o ambiente Python e roda as suítes de integração.
- **e2e-playwright:** Provisiona Node, baixa o Chromium e roda as validações E2E.
- **e2e-robot:** Provisiona o `robotframework-browser` e executa os fluxos BDD.
- **performance-k6:** Baixa o K6 CLI no Ubuntu e atesta a velocidade da API.

---

## Visualização Online

> **[Acesse o Hub Central de Relatórios (Live Reports)](https://realleotavares.github.io/portfolio-qa/)** para visualizar as métricas, traces e logs da última execução da pipeline.

---

## Conecte-se comigo

[LinkedIn](https://www.linkedin.com/in/leovtavares/)

<br><br><br>

<a id="english"></a>
# QA & Engineering Automation Portfolio

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Playwright](https://img.shields.io/badge/Playwright-2EAD33?logo=playwright&logoColor=white)](https://playwright.dev/)
[![Pytest](https://img.shields.io/badge/Pytest-0A9EDC?logo=pytest&logoColor=white)](https://docs.pytest.org/)
[![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?logo=robotframework&logoColor=white)](https://robotframework.org/)
[![K6](https://img.shields.io/badge/K6-7D64FF?logo=k6&logoColor=white)](https://k6.io/)

This repository serves as a **Monorepo** containing a complete test automation ecosystem focused on Quality Engineering.

This portfolio adheres to strict ethical and professional testing guidelines:
- **No Unauthorized Testing:** Automated scripts, load tests, or exploratory UI tests are not run against third-party production systems without explicit authorization.
- **Authorized Sandboxes Only:** All tests in this portfolio target officially recognized testing sandboxes (e.g., `saucedemo.com`, `the-internet.herokuapp.com`, `restful-booker.herokuapp.com`).
- **Real Validations:** `mocks` or `@patch` are not used in the integration API tests. The tests execute real HTTP calls against sandbox APIs and assert structural and data integrity via JSON Schemas.
- **Assertion Completeness:** Every single test script contains robust assertions. No "blind" exploratory scripts are written.

---

## Technical Maturity & Business Vision

Beyond code, this portfolio demonstrates critical engineering thinking:
- **Clean State (Intelligent Teardown):** The backend framework (Pytest) tracks generated entities and executes `DELETE` via teardown fixtures (yield), ensuring zero database pollution.
- **Deep Assertions:** E2E tests validate complex mathematical rules (tax calculation on carts) while the API re-queries endpoints (GET) to definitively prove database persistence.
- **Resilience (Anti-Flakiness):** Active integration of Smart Waits, native Retries (Playwright/Pytest), and custom Thresholds (K6) to withstand network latency and server "Cold Starts".

Explore the strategic QA pillars in the documentation folder:
- [Master Test Plan](docs/TEST_PLAN.md)
- [Test Cases & Acceptance Criteria Traceability](docs/TEST_CASES_&_ACCEPTANCE.md)
- [Bug Reports & Infra Catalog](docs/BUG_REPORTS.md)
- [Defect Simulator (Jira)](docs/JIRA_SIMULATION.md)
- [Risk Matrix](docs/RISK_MATRIX.md)
- [Changelog](CHANGELOG.md)

---

## Architectural Map

Rather than building a scattered set of projects, testing strategies have been consolidated into this unified Monorepo. Each folder represents a distinct layer of the testing pyramid.

### 1. [`e2e-playwright/`](./e2e-playwright) (Frontend UI Validation)
End-to-End (E2E) testing framework utilizing Playwright and TypeScript.
- **Design Pattern:** Strict adherence to the Page Object Model (POM) for maximum maintainability.
- **Target Sandbox:** SauceDemo (Standard User Checkout Flow) and The-Internet (Dynamic Loading).
- **Competencies:** Handling asynchronous UI elements, negative testing, and robust visual assertions.

### 2. [`api-pytest/`](./api-pytest) (Backend Data Validation)
A dedicated backend quality assurance module built with Python and Pytest.
- **Design Pattern:** Extensive use of `conftest.py` for fixture injection (Authentication, Base URLs).
- **Target Sandbox:** Restful-Booker (CRUD Operations).
- **Competencies:** Real HTTP requests (no mocks), JSON Schema validation using `jsonschema`, and stateful data verification.

### 3. [`e2e-robot/`](./e2e-robot) (Behavior Driven Development)
UI test automation using Python and Robot Framework.
- **Design Pattern:** Keyword-Driven architecture isolating technical Playwright steps into high-level business vocabulary (`keywords.resource`).
- **Target Sandbox:** SauceDemo.
- **Competencies:** Bridging the gap between business requirements and technical execution via readable `.robot` files.

### 4. [`performance-k6/`](./performance-k6) (Load & Stress Engineering)
Performance testing using Grafana k6.
- **Design Pattern:** Modular scripts utilizing custom Metrics (`Trend`, `Rate`).
- **Target Sandbox:** Restful-Booker and corporate laboratory environments.
- **Competencies:** Defining Service Level Agreements (SLAs) as code through Thresholds (e.g., error rate < 1%, p(95) < 2s).

### 5. [`api-db-integration/`](./api-db-integration) (Persistence & Mocking)
Dockerized infrastructure validating deep integration and isolation.
- **Design Pattern:** Pytest + SQLAlchemy + Wiremock.
- **Target Sandbox:** PostgreSQL (Docker) and Wiremock API.
- **Competencies:** Direct SQL Assertions and Mocking failing third-party environments.

### 6. [`contract-tests/`](./contract-tests) (Pact Consumer Tests)
Ensuring Front-end and Back-end do not break communication schemas.
- **Design Pattern:** `pact-python` defining expected JSON Schemas.
- **Competencies:** Contract Testing, extreme Shift-Left preventing integration failures.

---

## CI/CD Pipeline

This monorepo is governed by a unified GitHub Actions pipeline (`.github/workflows/ci.yml`). Every push to the `main` branch spins up a containerized environment via **Docker Compose** (Postgres + Wiremock) and triggers parallel test executions:
- **api-pytest:** Provisions a Python environment and runs the integration tests.
- **e2e-playwright:** Provisions a Node environment, installs Chromium, and runs the E2E specs.
- **e2e-robot:** Provisions Python, installs `robotframework-browser`, and executes the BDD specs.
- **performance-k6:** Provisions the K6 CLI on Ubuntu and validates the API thresholds.

---

## Online Visualization

> **[Access the QA Reports Hub (Live Reports)](https://realleotavares.github.io/portfolio-qa/)** to view metrics, traces, and logs from the latest pipeline execution.

---

## Connect with me

[LinkedIn](https://www.linkedin.com/in/leovtavares/)

<br><br><br>

<a id="español"></a>
# Portafolio de Automatización de QA e Ingeniería

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Playwright](https://img.shields.io/badge/Playwright-2EAD33?logo=playwright&logoColor=white)](https://playwright.dev/)
[![Pytest](https://img.shields.io/badge/Pytest-0A9EDC?logo=pytest&logoColor=white)](https://docs.pytest.org/)
[![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?logo=robotframework&logoColor=white)](https://robotframework.org/)
[![K6](https://img.shields.io/badge/K6-7D64FF?logo=k6&logoColor=white)](https://k6.io/)

Este repositorio funciona como un **Monorepo** centralizando un ecosistema completo de automatización de pruebas enfocado en Ingeniería de Calidad.

Este portafolio sigue directrices éticas y profesionales estrictas:
- **Pruebas No Autorizadas:** No se ejecutan scripts automatizados, pruebas de carga o pruebas exploratorias de UI contra sistemas de producción de terceros sin autorización explícita.
- **Sandboxes Autorizados:** Todas las pruebas en este portafolio están dirigidas a sandboxes oficiales y reconocidos con fines educativos (ej: `saucedemo.com`, `the-internet.herokuapp.com`, `restful-booker.herokuapp.com`).
- **Validaciones Reales:** No se utilizan `mocks` (como `@patch`) en las pruebas de integración de API. Las pruebas ejecutan llamadas HTTP reales y verifican la integridad estructural a través de JSON Schemas.
- **Integridad de Aserciones:** Todo script de prueba contiene aserciones robustas. No se escriben scripts exploratorios "ciegos".

---

## Madurez Técnica y Visión de Negocio

Más allá del código, este portafolio demuestra pensamiento crítico de ingeniería:
- **Estado Limpio (Teardown Inteligente):** El framework de backend (Pytest) rastrea las entidades generadas y ejecuta `DELETE` a través de fixtures (yield), asegurando cero contaminación de datos.
- **Aserciones Profundas:** Las pruebas E2E validan reglas matemáticas (cálculo de impuestos) mientras que la API vuelve a consultar puntos finales (GET) para probar la persistencia en la base de datos.
- **Resiliencia (Anti-Flakiness):** Integración activa de Esperas Inteligentes, Reintentos nativos (Playwright/Pytest) y Umbrales personalizados (K6) para soportar latencias de red y "Arranques en Frío".

Explore los pilares estratégicos de QA en la carpeta de documentación:
- [Plan Maestro de Pruebas](docs/TEST_PLAN.md)
- [Casos de Prueba y Criterios de Aceptación](docs/TEST_CASES_&_ACCEPTANCE.md)
- [Reportes de Bugs e Infraestructura](docs/BUG_REPORTS.md)
- [Simulador de Defectos (Jira)](docs/JIRA_SIMULATION.md)
- [Matriz de Riesgos](docs/RISK_MATRIX.md)
- [Changelog](CHANGELOG.md)

---

## Mapa Arquitectónico

En lugar de mantener una colección de proyectos dispersos, se han consolidado las estrategias de prueba en este Monorepo unificado. Cada carpeta representa una capa distinta de la pirámide de pruebas.

### 1. [`e2e-playwright/`](./e2e-playwright) (Validación de UI Frontend)
Framework de pruebas End-to-End (E2E) utilizando Playwright y TypeScript.
- **Patrón de Diseño:** Adopción estricta del Page Object Model (POM) para máxima mantenibilidad.
- **Sandbox Objetivo:** SauceDemo (Flujo de Checkout) y The-Internet (Carga Dinámica).
- **Competencias:** Manejo de elementos asíncronos, pruebas negativas y aserciones visuales asertivas.

### 2. [`api-pytest/`](./api-pytest) (Validación de Datos Backend)
Módulo dedicado a la garantía de calidad de backend, construido en Python y Pytest.
- **Patrón de Diseño:** Uso extensivo de `conftest.py` para la inyección de fixtures (Autenticación, URLs Base).
- **Sandbox Objetivo:** Restful-Booker (Operaciones CRUD).
- **Competencias:** Peticiones HTTP reales (sin mocks), validación de JSON Schema y verificación de la integridad de los datos.

### 3. [`e2e-robot/`](./e2e-robot) (Behavior Driven Development)
Automatización de pruebas de UI utilizando Python y Robot Framework.
- **Patrón de Diseño:** Arquitectura Keyword-Driven aislando los pasos técnicos de Playwright en un vocabulario de negocios de alto nivel (`keywords.resource`).
- **Sandbox Objetivo:** SauceDemo.
- **Competencias:** Aproximación de los requisitos de negocio a la ejecución técnica mediante archivos `.robot` altamente legibles.

### 4. [`performance-k6/`](./performance-k6) (Ingeniería de Carga y Estrés)
Pruebas de rendimiento utilizando Grafana k6.
- **Patrón de Diseño:** Scripts modulares con el uso de Métricas Personalizadas (`Trend`, `Rate`).
- **Sandbox Objetivo:** Restful-Booker y entornos de laboratorio corporativos.
- **Competencias:** Definición de Acuerdos de Nivel de Servicio (SLAs) como código mediante Umbrales/Thresholds (ej: tasa de error < 1%, p(95) < 2s).

### 5. [`api-db-integration/`](./api-db-integration) (Persistencia & Mocking)
Infraestructura Dockerizada validando integración profunda y aislamiento.
- **Patrón de Diseño:** Pytest + SQLAlchemy + Wiremock.
- **Sandbox Objetivo:** PostgreSQL (Docker) y Wiremock API.
- **Competencias:** Aserciones SQL Directas y Mocking de entornos fallidos de terceros.

### 6. [`contract-tests/`](./contract-tests) (Pact Consumer Tests)
Garantía de que Front-end y Back-end no rompan los esquemas de comunicación.
- **Patrón de Diseño:** `pact-python` definiendo JSON Schemas esperados.
- **Competencias:** Pruebas de Contrato, Shift-Left extremo previniendo fallos de integración.

---

## Pipeline CI/CD

Este monorepo es gobernado por un pipeline unificado mediante GitHub Actions (`.github/workflows/ci.yml`). Cada push a la rama `main` levanta un entorno contenedorizado a través de **Docker Compose** (Postgres + Wiremock) y desencadena ejecuciones paralelas:
- **api-pytest:** Provisiona el entorno Python y ejecuta las suites de integración.
- **e2e-playwright:** Provisiona Node, descarga Chromium y ejecuta las validaciones E2E.
- **e2e-robot:** Provisiona `robotframework-browser` y ejecuta los flujos BDD.
- **performance-k6:** Descarga la CLI de K6 en Ubuntu y verifica la velocidad de la API.

---

## Visualización Online

> **[Acceda al Centro de Reportes de QA (Live Reports)](https://realleotavares.github.io/portfolio-qa/)** para visualizar métricas, traces y registros de la última ejecución del pipeline.

---

## Conéctate conmigo

[LinkedIn](https://www.linkedin.com/in/leovtavares/)
