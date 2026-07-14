[Português](#português) | [English](#english) | [Español](#español)

---

<a id="português"></a>
# Simulador de Defeitos (Jira)

Abaixo está o registro simulado da rastreabilidade de defeitos e tarefas, modelado como um quadro Jira corporativo.

| Ticket ID | Tipo | Título | Status | Relator | Responsável | Comentário de Resolução |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| QA-1001 | Bug | Timeout intermitente no login da UI | Concluído | QA Engineer | Dev Team | Implementado mecanismo de Retry Automático no Playwright (ver commit inicial). |
| QA-1002 | Bug | API de usuários retornando 200 ao invés de 201 | Concluído | QA Engineer | Backend | Corrigido o status code no endpoint de criacao de usuários. Pytest agora faz Deep Assertion no BD. |
| QA-1003 | Task | Containerizar o ambiente de testes | Concluído | Tech Lead | DevOps/QA | `docker-compose.yml` adicionado contemplando Postgres e Wiremock. |
| QA-1004 | Bug | Quebra de contrato (Frontend recebendo payload alterado) | Concluído | Frontend | Backend | Implementado Contract Testing (`pact-python`) para barrar breaking changes no pipeline. |
| QA-1005 | Bug | Falha na pipeline de CI quando Sandbox cai | Concluído | QA Engineer | DevOps/QA | Integrado Mocking (Wiremock) para isolar testes da dependência externa na esteira. |

---

<a id="english"></a>
# Defect Simulator (Jira)

Below is the simulated defect and task traceability log, modeled as a corporate Jira board.

| Ticket ID | Type | Title | Status | Reporter | Assignee | Resolution Comment |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| QA-1001 | Bug | Intermittent UI login timeout | Done | QA Engineer | Dev Team | Implemented Automatic Retry mechanism in Playwright (see initial commit). |
| QA-1002 | Bug | User API returning 200 instead of 201 | Done | QA Engineer | Backend | Fixed status code in user creation endpoint. Pytest now performs Deep Assertion in the DB. |
| QA-1003 | Task | Containerize testing environment | Done | Tech Lead | DevOps/QA | `docker-compose.yml` added containing Postgres and Wiremock. |
| QA-1004 | Bug | Contract breach (Frontend receiving altered payload) | Done | Frontend | Backend | Implemented Contract Testing (`pact-python`) to block breaking changes in the pipeline. |
| QA-1005 | Bug | CI pipeline failure when Sandbox is down | Done | QA Engineer | DevOps/QA | Integrated Mocking (Wiremock) to isolate tests from external dependencies in the pipeline. |

---

<a id="español"></a>
# Simulador de Defectos (Jira)

A continuación se muestra el registro simulado de trazabilidad de defectos y tareas, modelado como un tablero Jira corporativo.

| ID Ticket | Tipo | Título | Estado | Reportador | Responsable | Comentario de Resolución |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| QA-1001 | Bug | Timeout intermitente en el login de la UI | Completado | QA Engineer | Dev Team | Implementado mecanismo de Retry Automático en Playwright (ver commit inicial). |
| QA-1002 | Bug | API de usuarios devolviendo 200 en lugar de 201 | Completado | QA Engineer | Backend | Corregido el status code en el endpoint de creación de usuarios. Pytest ahora realiza Deep Assertion en la BD. |
| QA-1003 | Task | Contenerizar el entorno de pruebas | Completado | Tech Lead | DevOps/QA | `docker-compose.yml` añadido contemplando Postgres y Wiremock. |
| QA-1004 | Bug | Ruptura de contrato (Frontend recibiendo payload alterado) | Completado | Frontend | Backend | Implementado Contract Testing (`pact-python`) para bloquear breaking changes en la pipeline. |
| QA-1005 | Bug | Fallo en la pipeline de CI cuando Sandbox cae | Completado | QA Engineer | DevOps/QA | Integrado Mocking (Wiremock) para aislar pruebas de la dependencia externa en la pipeline. |

---
*Aviso Acadêmico / Academic Notice / Aviso Académico:*
*Este documento é uma simulação acadêmica, incluída puramente para fins de demonstração de portfólio. Tem como intuito demonstrar a habilidade técnica em documentação e rastreabilidade do ciclo de vida de defeitos, simulando um ambiente real de mercado de trabalho.*
*This document is an academic simulation, included purely for portfolio demonstration purposes. It aims to demonstrate technical ability in documentation and defect lifecycle traceability, simulating a real job market environment.*
*Este documento es una simulación académica, incluida puramente para fines de demostración de portafolio. Tiene como objetivo demostrar la capacidad técnica en documentación y trazabilidad del ciclo de vida de defectos, simulando un entorno real de mercado laboral.*
