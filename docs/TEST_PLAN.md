# Master Test Plan: QA Automation Hub

## Português

### 1. Resumo Executivo
Este documento descreve a abordagem estratégica de Garantia de Qualidade para o portfólio **QA Automation Hub**. O objetivo é demonstrar uma estratégia madura de testes "shift-left" que abrange múltiplas camadas da arquitetura da aplicação, desde APIs de backend até UI de frontend e performance, aderindo aos princípios da Pirâmide de Automação de Testes.

### 2. Estratégia de Testes e a Pirâmide de Automação
Nossa estratégia de testes é projetada para fornecer máxima cobertura de riscos com velocidade ideal de execução e manutenibilidade.

#### 2.1 Camada de Backend / API (Pytest)
- **Objetivo:** Validar a lógica de negócios e persistência de banco de dados do microsserviço Restful-Booker.
- **Por que Pytest?** Fornece um framework robusto e nativo em Python para testes rápidos de API com recursos poderosos de `fixture` para gerenciamento de estado (setup/teardown).
- **Escopo:** Operações CRUD, Validação de Schema, Autenticação e Asserções Profundas (validando o estado real do banco de dados).

#### 2.2 Camada de Frontend / UI (Playwright e Robot Framework)
- **Objetivo:** Validar as jornadas do usuário final (E2E) na plataforma de e-commerce SauceDemo.
- **Por que Playwright?** Oferece execução ultra-rápida e cross-browser com esperas automáticas (auto-waiting).
- **Por que Robot Framework?** Implementa o Desenvolvimento Guiado por Comportamento (BDD), atuando como uma documentação viva entre stakeholders técnicos e de negócios.
- **Escopo:** Fluxos principais geradores de receita (Autenticação, Carrinho, Validação Matemática do Checkout).

#### 2.3 Camada de Performance (K6)
- **Objetivo:** Garantir que o backend possa sustentar as cargas de usuário esperadas sem degradação.
- **Por que K6?** Focado no desenvolvedor e baseado em JavaScript que se integra nativamente em pipelines CI/CD com Acordos de Nível de Serviço (SLAs) configuráveis.
- **Escopo:** Testes de Carga/Estresse na camada de API, monitorando tempos de resposta P95 e taxas de falha.

### 3. Análise de Riscos e Mitigação
- **Poluição de Dados:** (Risco Médio) Mitigado implementando fixtures inteligentes no Pytest com o comando `yield` para auto-excluir dados de teste gerados, independentemente do resultado (Clean State).
- **Instabilidade de Ambiente:** (Risco Alto) Mitigado integrando `pytest-rerunfailures`, retentativas nativas do Playwright e timeouts estendidos no Robot para tolerar lentidões do servidor (Cold Starts).
- **Falsos Positivos:** (Risco Alto) Mitigado substituindo asserções superficiais por Asserções Profundas (cálculos matemáticos no carrinho, verificação via banco de dados na API).

---

## English

### 1. Executive Summary
This document outlines the strategic Quality Assurance approach for the **QA Automation Hub** portfolio. The objective is to demonstrate a mature, shift-left testing strategy that spans across multiple layers of the application architecture, from backend APIs to frontend UI and performance, adhering to the Test Automation Pyramid principles.

### 2. Test Strategy & The Automation Pyramid
Our testing strategy is designed to provide maximum risk coverage with optimal execution speed and maintainability.

#### 2.1 Backend / API Layer (Pytest)
- **Objective:** Validate the business logic and database persistence of the Restful-Booker microservice.
- **Why Pytest?** It provides a robust, Python-native framework for rapid API testing with powerful `fixture` capabilities for setup/teardown state management.
- **Scope:** CRUD operations, Schema validation, Authentication, and Deep Assertions (validating actual database state).

#### 2.2 Frontend / UI Layer (Playwright & Robot Framework)
- **Objective:** Validate the end-user journeys (E2E) on the SauceDemo e-commerce platform.
- **Why Playwright?** Offers blazing-fast, cross-browser execution with built-in auto-waiting.
- **Why Robot Framework?** Implements Behavior-Driven Development (BDD), acting as a living documentation bridge between technical and business stakeholders.
- **Scope:** Core revenue-generating flows (Authentication, Cart Management, Checkout Math Validation).

#### 2.3 Performance Layer (K6)
- **Objective:** Ensure the backend can sustain expected user loads without degradation.
- **Why K6?** Developer-centric, JavaScript-based load testing tool that integrates seamlessly into CI/CD pipelines with configurable Service Level Agreements (SLAs).
- **Scope:** Stress/Load testing on the API layer, monitoring P95 response times and failure rates.

### 3. Risk Analysis & Mitigation
- **Data Pollution:** (Medium Risk) Mitigated by implementing intelligent Pytest `yield` fixtures to auto-delete generated test data regardless of test outcome (Clean State).
- **Environment Flakiness:** (High Risk) Mitigated by integrating `pytest-rerunfailures`, Playwright native retries, and increased Robot Browser timeouts to tolerate server cold starts.
- **False Positives:** (High Risk) Mitigated by replacing shallow UI assertions with Deep Assertions (mathematical calculations of the cart, DB state verification via API GET).

---

## Español

### 1. Resumen Ejecutivo
Este documento describe el enfoque estratégico de Aseguramiento de Calidad para el portafolio **QA Automation Hub**. El objetivo es demostrar una estrategia madura de pruebas "shift-left" que abarca múltiples capas de la arquitectura de la aplicación, desde APIs de backend hasta la UI de frontend y rendimiento, adhiriéndose a los principios de la Pirámide de Automatización de Pruebas.

### 2. Estrategia de Pruebas y la Pirámide de Automatización
Nuestra estrategia de pruebas está diseñada para proporcionar la máxima cobertura de riesgos con una velocidad de ejecución y mantenibilidad óptimas.

#### 2.1 Capa de Backend / API (Pytest)
- **Objetivo:** Validar la lógica de negocio y la persistencia en la base de datos del microservicio Restful-Booker.
- **Por qué Pytest?** Proporciona un marco nativo de Python robusto para pruebas rápidas de API con potentes capacidades de `fixture` para la gestión de estado (setup/teardown).
- **Alcance:** Operaciones CRUD, Validación de Esquema, Autenticación y Aserciones Profundas (validando el estado real de la base de datos).

#### 2.2 Capa de Frontend / UI (Playwright y Robot Framework)
- **Objetivo:** Validar los viajes del usuario final (E2E) en la plataforma de comercio electrónico SauceDemo.
- **Por qué Playwright?** Ofrece ejecución ultrarrápida en múltiples navegadores con esperas automáticas (auto-waiting) integradas.
- **Por qué Robot Framework?** Implementa el Desarrollo Guiado por Comportamiento (BDD), actuando como un puente de documentación viva entre los responsables técnicos y de negocio.
- **Alcance:** Flujos principales generadores de ingresos (Autenticación, Gestión de Carrito, Validación Matemática de Pago).

#### 2.3 Capa de Rendimiento (K6)
- **Objetivo:** Asegurar que el backend pueda sostener las cargas de usuario esperadas sin degradación.
- **Por qué K6?** Herramienta de pruebas de carga basada en JavaScript y centrada en el desarrollador que se integra perfectamente en pipelines CI/CD con Acuerdos de Nivel de Servicio (SLAs) configurables.
- **Alcance:** Pruebas de Estrés/Carga en la capa API, monitoreando tiempos de respuesta P95 y tasas de fallo.

### 3. Análisis de Riesgos y Mitigación
- **Contaminación de Datos:** (Riesgo Medio) Mitigado implementando fixtures inteligentes de Pytest con `yield` para auto-eliminar datos de prueba generados sin importar el resultado de la prueba (Estado Limpio).
- **Inestabilidad del Entorno:** (Riesgo Alto) Mitigado integrando `pytest-rerunfailures`, reintentos nativos de Playwright y aumento de los tiempos de espera del navegador Robot para tolerar arranques en frío del servidor.
- **Falsos Positivos:** (Riesgo Alto) Mitigado reemplazando aserciones de UI superficiales con Aserciones Profundas (cálculos matemáticos del carrito, verificación de estado de la base de datos vía API GET).
