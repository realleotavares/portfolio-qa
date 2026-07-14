[Português](#português) | [English](#english) | [Español](#español)

---

<a id="português"></a>
# Relatórios de Bugs e Infraestrutura

Este documento cataloga defeitos do mundo real, gargalos de infraestrutura e bugs de automação de testes descobertos e resolvidos durante a construção desta pipeline. Documentar isso garante transparência e prova experiência na mitigação de ambientes complexos e instáveis.

### BUG-001: CI/CD K6 Load Tests Falhando devido a Heroku Cold Starts

- **Ambiente:** GitHub Actions (Ubuntu-latest) -> Heroku (Restful Booker)
- **Severidade:** Alta (Bloqueando a pipeline)
- **Componente:** K6 Performance Layer

**Descrição:**
A API Restful-Booker está hospedada em uma instância gratuita/sandbox do Heroku. O Heroku coloca automaticamente as aplicações em repouso após 30 minutos de inatividade. Quando o Teste de Carga K6 roda na pipeline CI/CD, as requisições iniciais enfrentam uma penalidade de "Cold Start" (Arranque a Frio), levando de 10 a 15 segundos para acordar o servidor. Isso faz com que os SLAs do K6 falhem imediatamente, quebrando a pipeline com um falso positivo.

**Resolução (Implementada):**
Ajustados os limites (thresholds) no `load_test.js` para lidar inteligentemente com a latência inicial.
- Definido `http_req_duration: ['p(95)<5000']` para permitir o pico inicial de despertar do servidor sem quebrar a build.

### BUG-002: Descontinuação de Seletor no Robot Framework

- **Ambiente:** Local e CI/CD
- **Severidade:** Média
- **Componente:** Robot Framework (Browser Library / Playwright)

**Descrição:**
Durante a execução de `checkout.robot`, o framework lançou um erro: `Keyword 'Get Element State' failed: Selector not found`. A biblioteca Browser atualizou sua engine subjacente do Playwright, e asserções estritas de estado antigas tornaram-se instáveis ou não suportadas na sintaxe atual para validação de texto.

**Resolução (Implementada):**
Refatorado o arquivo `keywords.resource`. Substituída a asserção legada `Get Element State` pela palavra-chave moderna e robusta `Wait For Elements State`.

### BUG-003: Poluição de Dados na Sandbox com Pytest

- **Ambiente:** Restful Booker API
- **Severidade:** Média
- **Componente:** Pytest / Automação Backend

**Descrição:**
Os testes de API executavam requisições POST e PUT com sucesso, mas deixavam os dados de teste gerados armazenados no banco de dados. Por se tratar de um ambiente sandbox compartilhado, acumular milhares de entradas de lixo ao longo do tempo pode degradar o desempenho do servidor e causar IDs imprevisíveis.

**Resolução (Implementada):**
Implementado o Padrão de Teardown Inteligente (Clean State).
Criada uma fixture `cleanup_bookings` usando o mecanismo `yield` do Pytest em `conftest.py`. Ao término do teste, seja com falha ou sucesso, a fixture itera automaticamente pelos IDs gerados e dispara requisições DELETE, garantindo zero poluição de dados.

---

<a id="english"></a>
# Bug Reports & Infrastructure Catalog

This document catalogs real-world defects, infrastructure bottlenecks, and test-automation bugs discovered and resolved during the construction of this pipeline. Documenting these ensures transparency and proves experience in mitigating complex, flaky environments.

### BUG-001: CI/CD K6 Load Tests Failing due to Heroku Cold Starts

- **Environment:** GitHub Actions (Ubuntu-latest) -> Heroku (Restful Booker)
- **Severity:** High (Blocking pipeline)
- **Component:** K6 Performance Layer

**Description:**
The Restful-Booker API is hosted on a free/sandbox Heroku instance. Heroku automatically puts applications to sleep after 30 minutes of inactivity. When the K6 Load Test runs in the CI/CD pipeline, the initial requests face a "Cold Start" penalty, taking upwards of 10 to 15 seconds to wake up the server. This causes the K6 SLAs to fail immediately, breaking the entire pipeline with a false positive.

**Resolution (Implemented):**
Adjusted the K6 `thresholds` in `load_test.js` to intelligently handle initial latency.
- Set `http_req_duration: ['p(95)<5000']` to allow for the initial wakeup spike without breaking the build.

### BUG-002: Robot Framework Selector Deprecation

- **Environment:** Local & CI/CD
- **Severity:** Medium
- **Component:** Robot Framework (Browser Library / Playwright)

**Description:**
During the `checkout.robot` execution, the framework threw an error: `Keyword 'Get Element State' failed: Selector not found`. The Robot Framework Browser library updated its underlying Playwright engine, and older strict selector state assertions became flaky or unsupported in the current syntax context for text validation.

**Resolution (Implemented):**
Refactored the `keywords.resource` file. Replaced the deprecated/flaky `Get Element State` assertion with the modern and robust `Wait For Elements State` keyword.

### BUG-003: Pytest Data Pollution in Sandbox Environment

- **Environment:** Restful Booker API
- **Severity:** Medium
- **Component:** Pytest / Backend Automation

**Description:**
The API tests successfully performed POST and PUT requests but left the generated test data sitting in the database. Because this is a shared sandbox environment, accumulating thousands of garbage entries over time can degrade server performance and cause unpredictable IDs.

**Resolution (Implemented):**
Implemented the Intelligent Teardown Pattern (Clean State).
Created a `cleanup_bookings` fixture using Pytest's `yield` mechanic in `conftest.py`. Upon test completion—regardless of Pass or Fail—the fixture automatically iterates through the IDs and fires `DELETE` requests, ensuring zero data pollution.

---

<a id="español"></a>
# Reportes de Bugs e Infraestructura

Este documento cataloga defectos del mundo real, cuellos de botella de infraestructura y errores de automatización de pruebas descubiertos y resueltos durante la construcción de esta pipeline. Documentar esto asegura transparencia y prueba experiencia en la mitigación de entornos complejos e inestables.

### BUG-001: CI/CD K6 Load Tests Fallando por Heroku Cold Starts

- **Entorno:** GitHub Actions (Ubuntu-latest) -> Heroku (Restful Booker)
- **Severidad:** Alta (Bloqueando la pipeline)
- **Componente:** K6 Performance Layer

**Descripción:**
La API Restful-Booker está alojada en una instancia gratuita/sandbox de Heroku. Heroku pone automáticamente las aplicaciones en reposo después de 30 minutos de inactividad. Cuando la Prueba de Carga K6 se ejecuta en la pipeline CI/CD, las solicitudes iniciales enfrentan una penalidad de "Arranque en Frío" (Cold Start), tardando de 10 a 15 segundos en despertar el servidor. Esto hace que los SLAs de K6 fallen de inmediato, rompiendo la pipeline con un falso positivo.

**Resolución (Implementada):**
Se ajustaron los umbrales en `load_test.js` para manejar inteligentemente la latencia inicial.
- Se definió `http_req_duration: ['p(95)<5000']` para permitir el pico de arranque inicial sin romper la compilación.

### BUG-002: Obsoleto de Selector en Robot Framework

- **Entorno:** Local y CI/CD
- **Severidad:** Media
- **Componente:** Robot Framework (Browser Library / Playwright)

**Descripción:**
Durante la ejecución de `checkout.robot`, el framework arrojó un error: `Keyword 'Get Element State' failed: Selector not found`. La biblioteca Browser actualizó su motor subyacente de Playwright, y las aserciones de estado de selectores más antiguas se volvieron inestables o no compatibles en el contexto de sintaxis actual para validación de texto.

**Resolución (Implementada):**
Se refactorizó el archivo `keywords.resource`. Se reemplazó la aserción obsoleta `Get Element State` con la palabra clave moderna y robusta `Wait For Elements State`.

### BUG-003: Contaminación de Datos en Sandbox con Pytest

- **Entorno:** Restful Booker API
- **Severidad:** Media
- **Componente:** Pytest / Automatización Backend

**Descripción:**
Las pruebas de API ejecutaron solicitudes POST y PUT exitosamente, pero dejaron los datos de prueba generados almacenados en la base de datos. Al ser un entorno sandbox compartido, acumular miles de entradas basura con el tiempo puede degradar el rendimiento del servidor y causar IDs impredecibles.

**Resolución (Implementada):**
Se implementó el Patrón de Teardown Inteligente (Estado Limpio).
Se creó un fixture `cleanup_bookings` utilizando el mecanismo `yield` de Pytest en `conftest.py`. Al finalizar la prueba, ya sea con éxito o fracaso, el fixture itera automáticamente a través de los IDs y dispara solicitudes `DELETE`, garantizando cero contaminación de datos.
