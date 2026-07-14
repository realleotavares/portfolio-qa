# Matriz de Riscos | Risk Matrix | Matriz de Riesgos

[Português](#portugues) | [English](#english) | [Español](#espanol)

---

<a name="portugues"></a>
## Português

A matriz de riscos relaciona os impactos de negócios às coberturas de automação implementadas neste projeto.

| ID Risco | Funcionalidade Afetada | Probabilidade | Impacto de Negócio | Prioridade | Estratégia de Mitigação (Cobertura de Automação) |
| :--- | :--- | :---: | :---: | :---: | :--- |
| RSK-001 | Checkout de Pagamento (UI) | Média | Crítico | Alta | Cobertura E2E (Playwright) validando o fluxo crítico ("Happy Path") e indisponibilidade de cartões. |
| RSK-002 | Persistência de Dados de Usuário | Baixa | Crítico | Alta | Integração Direta no DB (Pytest + PostgreSQL) garantindo que respostas 201 Created sejam verdadeiramente salvas no disco físico. |
| RSK-003 | Quebra de Contrato API (Frontend/Backend) | Alta | Crítico | Alta | Testes de Contrato (Pact) isolando o schema JSON esperado entre Consumer e Provider. |
| RSK-004 | Indisponibilidade de Gateway de Pagamento Terceiro | Média | Alto | Média | Mocking (Wiremock) garantindo que testes internos rodem com sucesso mesmo com a API terceira offline. |
| RSK-005 | Gargalos de Concorrência sob Carga | Baixa | Médio | Baixa | Testes de Performance (k6) validando o throughput sob picos de VUs simulados. |

---

<a name="english"></a>
## English

The risk matrix correlates business impacts with the automated coverage implemented in this project.

| Risk ID | Affected Feature | Probability | Business Impact | Priority | Mitigation Strategy (Automation Coverage) |
| :--- | :--- | :---: | :---: | :---: | :--- |
| RSK-001 | Payment Checkout (UI) | Medium | Critical | High | E2E Coverage (Playwright) validating the critical flow ("Happy Path") and card unavailabilities. |
| RSK-002 | User Data Persistence | Low | Critical | High | Direct DB Integration (Pytest + PostgreSQL) ensuring 201 Created responses are truly saved to physical disk. |
| RSK-003 | API Contract Breach (Frontend/Backend) | High | Critical | High | Contract Tests (Pact) isolating the expected JSON schema between Consumer and Provider. |
| RSK-004 | Third-Party Payment Gateway Outage | Medium | High | Medium | Mocking (Wiremock) ensuring internal tests run successfully even when the third-party API is offline. |
| RSK-005 | Concurrency Bottlenecks under Load | Low | Medium | Low | Performance Tests (k6) validating throughput under simulated VU spikes. |

---

<a name="espanol"></a>
## Español

La matriz de riesgos correlaciona los impactos de negocio con las coberturas de automatización implementadas en este proyecto.

| ID Riesgo | Funcionalidad Afectada | Probabilidad | Impacto de Negocio | Prioridad | Estrategia de Mitigación (Cobertura de Automatización) |
| :--- | :--- | :---: | :---: | :---: | :--- |
| RSK-001 | Checkout de Pago (UI) | Media | Crítico | Alta | Cobertura E2E (Playwright) validando el flujo crítico ("Happy Path") e indisponibilidades de tarjetas. |
| RSK-002 | Persistencia de Datos de Usuario | Baja | Crítico | Alta | Integración Directa en BD (Pytest + PostgreSQL) asegurando que las respuestas 201 Created se guarden verdaderamente en el disco físico. |
| RSK-003 | Ruptura de Contrato API (Frontend/Backend) | Alta | Crítico | Alta | Pruebas de Contrato (Pact) aislando el esquema JSON esperado entre Consumer y Provider. |
| RSK-004 | Indisponibilidad de Pasarela de Pago de Terceros | Media | Alto | Media | Mocking (Wiremock) asegurando que las pruebas internas se ejecuten con éxito incluso con la API de terceros fuera de línea. |
| RSK-005 | Cuellos de Botella de Concurrencia bajo Carga | Baja | Medio | Baja | Pruebas de Rendimiento (k6) validando el rendimiento bajo picos de VU simulados. |
