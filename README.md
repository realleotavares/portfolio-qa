[English](#english) | [Português](#português)

<a id="english"></a>
# Quality Assurance (QA) & Engineering Portfolio

Welcome to my Quality Engineering showcase. This repository serves as a central hub and index for my complete test automation ecosystem. 

Rather than building a monolithic testing project, I have architected a suite of independent, highly specialized repositories. Each project demonstrates enterprise-grade proficiency in a specific layer of the modern testing pyramid, governed by strict CI/CD pipelines, clean code principles, and comprehensive reporting.

Below is the architectural map of my portfolio.

---

## 1. Playwright E2E Architecture
**Repository:** [playwright-e2e-automation](https://github.com/realleotavares/playwright-e2e-automation)

This is the primary End-to-End (E2E) testing framework. It utilizes a Multi-Client Monorepo architecture to validate complex user journeys and modern frontend behaviors.

**Core Competencies Demonstrated:**
- **Defect Prediction:** Testing architecture (Race Conditions, Optimistic UI) rather than just validating superficial CSS elements.
- **DevOps & CI/CD:** Robust GitHub Actions pipeline featuring smart dependency caching, cross-module monorepo execution, and automated deployment of test reports to GitHub Pages.
- **Clean Code & Governance:** Linear Git history governed by Jira-style IDs (e.g., CPT-9045) and Semantic Commits.

## 2. Pytest API Automation
**Repository:** [pytest-api-automation](https://github.com/realleotavares/pytest-api-automation)

A dedicated backend quality assurance repository. It demonstrates the ability to validate data integrity, handle HTTP requests, and implement test assertions directly in Python code.

**Core Competencies Demonstrated:**
- **Backend Validation:** Rigorous testing of schema types, status codes, headers, and JSON response bodies.
- **DevOps & CI/CD:** Automated pipeline generating and publishing rich Allure HTML Reports to the cloud.
- **Clean Code Architecture:** Utilization of Pytest fixtures for efficient setup/teardown and DRY (Don't Repeat Yourself) code principles.

## 3. QA Robot Framework & Python
**Repository:** [qa-robot-framework-python](https://github.com/realleotavares/qa-robot-framework-python)

This repository demonstrates UI test automation using Python and Robot Framework, focusing on BDD (Behavior Driven Development) and Keyword-Driven architecture.

**Core Competencies Demonstrated:**
- **Behavior Driven Development:** Translating business requirements into high-level, executable Keywords.
- **High-Performance UI Testing:** Utilizing the modern `robotframework-browser` (Playwright wrapper) instead of legacy libraries.
- **Enterprise Modularity:** Organizing test scripts by client folders to scale the keyword-driven architecture for real-world projects.

## 4. K6 Performance Testing
**Repository:** [k6-performance-testing](https://github.com/realleotavares/k6-performance-testing)

Focused entirely on Performance and Load Testing using Grafana k6. It demonstrates the capability to analyze system bottlenecks and ensure backend services can handle concurrent user traffic.

**Core Competencies Demonstrated:**
- **Performance Engineering:** Measuring `p(95)` response times, throughput (requests per second), and error rates.
- **Thresholds & SLAs:** Defining strict Service Level Agreements directly in code (e.g., `http_req_duration: ['p(95)<500']`).
- **Load Scenarios:** Implementing distinct architectural tests including Load, Stress, Soak, and Spike testing.

---
*This ecosystem is governed by strict CI/CD and software engineering standards.*  
**Connect with me:** [LinkedIn](https://www.linkedin.com/in/leovtavares/)

<br><br><br>

<a id="português"></a>
# Portfólio de Quality Assurance (QA) & Engenharia

Bem-vindo à minha vitrine de Engenharia de Qualidade. Este repositório atua como um hub central e índice para o meu ecossistema completo de automação de testes.

Em vez de construir um projeto de testes monolítico, arquitetei uma suíte de repositórios independentes e altamente especializados. Cada projeto demonstra proficiência em nível corporativo em uma camada específica da pirâmide de testes moderna, governado por pipelines estritas de CI/CD, princípios de Clean Code e relatórios abrangentes.

Abaixo está o mapa arquitetural do meu portfólio.

---

## 1. Playwright E2E Architecture
**Repositório:** [playwright-e2e-automation](https://github.com/realleotavares/playwright-e2e-automation)

Este é o framework principal de testes End-to-End (E2E). Ele utiliza uma arquitetura de Monorepo Multi-Client para validar jornadas complexas de usuários e comportamentos de frontends modernos.

**Competências Core Demonstradas:**
- **Previsão de Defeitos:** Testar a arquitetura (Race Conditions, Optimistic UI) ao invés de apenas validar elementos superficiais de CSS.
- **DevOps & CI/CD:** Pipeline robusta via GitHub Actions contendo caching inteligente de dependências, execução multicliente em paralelo, e deploy automático dos relatórios de teste via GitHub Pages.
- **Clean Code & Governança:** Histórico linear no Git, governado por IDs estilo Jira (ex: CPT-9045) e Semantic Commits.

## 2. Pytest API Automation
**Repositório:** [pytest-api-automation](https://github.com/realleotavares/pytest-api-automation)

Um repositório dedicado à garantia de qualidade de backend. Demonstra a capacidade de validar a integridade de dados, manipular requisições HTTP e implementar asserções de teste diretamente em código Python.

**Competências Core Demonstradas:**
- **Validação de Backend:** Teste rigoroso de schemas, status codes, cabeçalhos e payloads JSON.
- **DevOps & CI/CD:** Pipeline automatizada gerando e publicando ricos Allure HTML Reports na nuvem.
- **Arquitetura Clean Code:** Utilização de fixtures do Pytest para setup/teardown eficiente e princípios de código DRY (Don't Repeat Yourself).

## 3. QA Robot Framework & Python
**Repositório:** [qa-robot-framework-python](https://github.com/realleotavares/qa-robot-framework-python)

Este repositório demonstra a automação de testes de UI utilizando Python e Robot Framework, com foco em BDD (Behavior Driven Development) e arquitetura Keyword-Driven.

**Competências Core Demonstradas:**
- **Behavior Driven Development:** Traduzindo requisitos de negócio em Keywords executáveis de alto nível.
- **Testes UI de Alta Performance:** Uso da moderna biblioteca `robotframework-browser` (baseada em Playwright) no lugar de bibliotecas legadas.
- **Modularidade Corporativa:** Organizando scripts de teste por pastas de clientes para escalar a arquitetura baseada em Keywords para projetos do mundo real.

## 4. K6 Performance Testing
**Repositório:** [k6-performance-testing](https://github.com/realleotavares/k6-performance-testing)

Focado inteiramente em Testes de Carga e Performance utilizando Grafana k6. Demonstra a capacidade de analisar gargalos de sistema e garantir que os serviços de backend suportem tráfego simultâneo de usuários.

**Competências Core Demonstradas:**
- **Engenharia de Performance:** Medição de tempos de resposta `p(95)`, throughput (requisições por segundo) e taxas de erro.
- **Thresholds & SLAs:** Definição de Acordos de Nível de Serviço rigorosos direto no código (ex: `http_req_duration: ['p(95)<500']`).
- **Cenários de Carga:** Implementação de testes arquiteturais distintos, incluindo testes de Load, Stress, Soak e Spike.

---
*Este ecossistema é governado por rigorosos padrões de CI/CD e engenharia de software.*  
**Conecte-se comigo:** [LinkedIn](https://www.linkedin.com/in/leovtavares/)
