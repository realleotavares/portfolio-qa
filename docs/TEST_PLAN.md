[Português](#português) | [English](#english) | [Español](#español)

---

<a id="português"></a>
# Plano Mestre de Testes

### 1. Resumo Executivo
Este documento descreve a abordagem estratégica de Garantia de Qualidade para o portfólio **QA Automation Hub**. O objetivo é demonstrar uma estratégia madura de testes "shift-left" que abrange múltiplas camadas da arquitetura da aplicação, desde APIs de backend até UI de frontend, Banco de Dados, Testes de Contrato e Performance, aderindo aos princípios da Pirâmide de Automação de Testes.

### 2. Estratégia de Testes e a Pirâmide de Automação
Minha estratégia de testes é projetada para fornecer máxima cobertura de riscos com velocidade ideal de execução e manutenibilidade.

#### 2.1 Camada de Backend / API & Persistência (Pytest + PostgreSQL)
- **Objetivo:** Validar a lógica de negócios e persistência física de banco de dados através de um ambiente Dockerizado.
- **Por que Pytest?** Fornece um framework robusto nativo em Python. Utilizo SQLAlchemy para asserções profundas direto na base.
- **Escopo:** Operações CRUD, Autenticação, Asserções Profundas (validando o estado real do banco de dados).

#### 2.2 Camada de Testes de Contrato (Pact)
- **Objetivo:** Garantir estabilidade na comunicação entre Microserviços (Consumer vs Provider).
- **Por que Pact?** Previne falhas catastróficas em produção derivadas de quebra de schema JSON.
- **Escopo:** Mapeamento formal de contratos entre Front-end e Back-end.

#### 2.3 Camada de Mocking (Wiremock)
- **Objetivo:** Simular APIs terceiras para testes completamente isolados.
- **Por que Wiremock?** Permite que a minha pipeline rode offline ou imune a instabilidades de gateways externos.
- **Escopo:** Virtualização de serviços dependentes.

#### 2.4 Camada de Frontend / UI (Playwright e Robot Framework)
- **Objetivo:** Validar as jornadas do usuário final (E2E) na plataforma de e-commerce SauceDemo.
- **Por que Playwright?** Oferece execução ultra-rápida e cross-browser com esperas automáticas.
- **Por que Robot Framework?** Implementa o Desenvolvimento Guiado por Comportamento (BDD).
- **Escopo:** Fluxos principais geradores de receita.

#### 2.5 Camada de Performance (K6)
- **Objetivo:** Garantir que o backend possa sustentar as cargas esperadas sem degradação.
- **Por que K6?** Focado no desenvolvedor e baseado em JavaScript (SLAs configuráveis).
- **Escopo:** Testes de Carga/Estresse na camada de API.

### 3. Análise de Riscos e Mitigação
- **Poluição de Dados:** (Risco Médio) Mitigado implementando fixtures inteligentes no Pytest (Clean State).
- **Instabilidade de Ambiente Externo:** (Risco Alto) Mitigado com Wiremock e Testes de Contrato.
- **Falsos Positivos:** (Risco Alto) Mitigado por Asserções Profundas SQL em vez de apenas verificar status HTTP.

---

<a id="english"></a>
# Master Test Plan

### 1. Executive Summary
This document outlines the strategic Quality Assurance approach for the **QA Automation Hub** portfolio. The objective is to demonstrate a mature, shift-left testing strategy that spans across multiple layers of the application architecture, from backend APIs to frontend UI, Database, Contract Testing, and Performance, adhering to the Test Automation Pyramid principles.

### 2. Test Strategy & The Automation Pyramid
My testing strategy is designed to provide maximum risk coverage with optimal execution speed and maintainability.

#### 2.1 Backend / API & Persistence Layer (Pytest + PostgreSQL)
- **Objective:** Validate the business logic and physical database persistence through a Dockerized environment.
- **Why Pytest?** Provides a robust Python-native framework. I use SQLAlchemy for deep assertions directly in the DB.
- **Scope:** CRUD operations, Authentication, and Deep Assertions (validating actual database state).

#### 2.2 Contract Testing Layer (Pact)
- **Objective:** Ensure stability in communication between Microservices (Consumer vs Provider).
- **Why Pact?** Prevents catastrophic production failures derived from JSON schema breaches.
- **Scope:** Formal mapping of contracts between Front-end and Back-end.

#### 2.3 Mocking Layer (Wiremock)
- **Objective:** Simulate third-party APIs for completely isolated testing.
- **Why Wiremock?** Allows my pipeline to run offline or immune to external gateway instabilities.
- **Scope:** Service virtualization of dependencies.

#### 2.4 Frontend / UI Layer (Playwright & Robot Framework)
- **Objective:** Validate the end-user journeys (E2E) on the SauceDemo e-commerce platform.
- **Why Playwright?** Offers blazing-fast, cross-browser execution with built-in auto-waiting.
- **Why Robot Framework?** Implements Behavior-Driven Development (BDD).
- **Scope:** Core revenue-generating flows.

#### 2.5 Performance Layer (K6)
- **Objective:** Ensure the backend can sustain expected loads without degradation.
- **Why K6?** Developer-centric, JavaScript-based load testing tool (Configurable SLAs).
- **Scope:** Stress/Load testing on the API layer.

### 3. Risk Analysis & Mitigation
- **Data Pollution:** (Medium Risk) Mitigated by implementing intelligent Pytest clean-state fixtures.
- **External Environment Flakiness:** (High Risk) Mitigated with Wiremock and Contract Testing.
- **False Positives:** (High Risk) Mitigated by SQL Deep Assertions instead of merely verifying HTTP statuses.

---

<a id="español"></a>
# Plan Maestro de Pruebas

### 1. Resumen Ejecutivo
Este documento describe el enfoque estratégico de Aseguramiento de Calidad para el portafolio **QA Automation Hub**. El objetivo es demostrar una estrategia madura de pruebas "shift-left" que abarca múltiples capas de la arquitectura de la aplicación, desde APIs de backend hasta la UI de frontend, Base de Datos, Pruebas de Contrato y Rendimiento, adhiriéndose a los principios de la Pirámide de Automatización de Pruebas.

### 2. Estrategia de Pruebas y la Pirámide de Automatización
Mi estrategia de pruebas está diseñada para proporcionar la máxima cobertura de riesgos con una velocidad de ejecución y mantenibilidad óptimas.

#### 2.1 Capa de Backend / API y Persistencia (Pytest + PostgreSQL)
- **Objetivo:** Validar la lógica de negocio y la persistencia física en base de datos a través de un entorno Dockerizado.
- **Por qué Pytest?** Proporciona un marco nativo de Python robusto. Uso SQLAlchemy para aserciones profundas directamente en la BD.
- **Alcance:** Operaciones CRUD, Autenticación y Aserciones Profundas (validando el estado real de la base de datos).

#### 2.2 Capa de Pruebas de Contrato (Pact)
- **Objetivo:** Asegurar la estabilidad en la comunicación entre Microservicios (Consumer vs Provider).
- **Por qué Pact?** Previene fallos catastróficos en producción derivados de rupturas del esquema JSON.
- **Alcance:** Mapeo formal de contratos entre Front-end y Back-end.

#### 2.3 Capa de Mocking (Wiremock)
- **Objetivo:** Simular APIs de terceros para pruebas completamente aisladas.
- **Por qué Wiremock?** Permite que mi pipeline se ejecute fuera de línea o inmune a inestabilidades de pasarelas externas.
- **Alcance:** Virtualización de servicios dependientes.

#### 2.4 Capa de Frontend / UI (Playwright y Robot Framework)
- **Objetivo:** Validar los viajes del usuario final (E2E) en la plataforma de comercio electrónico SauceDemo.
- **Por qué Playwright?** Ofrece ejecución ultrarrápida en múltiples navegadores con esperas automáticas integradas.
- **Por qué Robot Framework?** Implementa el Desarrollo Guiado por Comportamiento (BDD).
- **Alcance:** Flujos principales generadores de ingresos.

#### 2.5 Capa de Rendimiento (K6)
- **Objetivo:** Asegurar que el backend pueda sostener las cargas esperadas sin degradación.
- **Por qué K6?** Herramienta de pruebas de carga basada en JavaScript (SLA Configurables).
- **Alcance:** Pruebas de Estrés/Carga en la capa API.

### 3. Análisis de Riesgos y Mitigación
- **Contaminación de Datos:** (Riesgo Medio) Mitigado implementando fixtures inteligentes de estado limpio en Pytest.
- **Inestabilidad del Entorno Externo:** (Riesgo Alto) Mitigado con Wiremock y Pruebas de Contrato.
- **Falsos Positivos:** (Riesgo Alto) Mitigado por Aserciones Profundas SQL en lugar de simplemente verificar estados HTTP.
