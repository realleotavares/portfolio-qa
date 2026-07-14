# API & Database Integration Layer

[Português](#português) | [English](#english) | [Español](#español)

---

<a id="português"></a>
## Português

### Objetivo
Esta camada foca nos testes de integração profunda entre a API e sua camada de persistência. O objetivo é validar o comportamento "Shift-Left" do Banco de Dados. Em vez de apenas confiar nos códigos de status HTTP da API (ex: 201 Created), nós utilizamos conexões diretas via `SQLAlchemy` e `psycopg2` no PostgreSQL para realizar as **Asserções Profundas** (Deep Assertions), verificando se os dados foram realmente escritos nos blocos físicos de armazenamento, de forma isolada usando Docker Compose.

### Arquitetura e Ferramentas
- **Pytest**: Framework principal para orquestrar os casos de testes.
- **SQLAlchemy & psycopg2**: Bibliotecas para executar consultas SQL diretas dentro da asserção de qualidade.
- **PostgreSQL**: O banco de dados em si (virtualizado via Docker).
- **Wiremock**: Mock de serviços de terceiros para garantir isolamento e estabilidade da pipeline.
- **Allure Reports**: Integrado via `pytest-allure` para agregar e gerar relatórios executivos unificados.

### Como Executar Localmente
Suba os containers necessários:
```bash
docker compose up -d
```
E então, execute a suite pelo pytest:
```bash
pytest api-db-integration/ --alluredir=allure-results
```

---

<a id="english"></a>
## English

### Objective
This layer focuses on deep integration testing between the API and its persistence layer. The goal is to validate the "Shift-Left" Database behavior. Instead of merely trusting the HTTP status codes from the API (e.g. 201 Created), we utilize direct connections via `SQLAlchemy` and `psycopg2` in PostgreSQL to perform **Deep Assertions**, verifying if the data was actually written to the physical storage blocks, isolated completely via Docker Compose.

### Architecture and Tools
- **Pytest**: The core test runner orchestration framework.
- **SQLAlchemy & psycopg2**: Libraries required to run raw SQL queries directly inside our quality assertions.
- **PostgreSQL**: The database engine (virtualized via Docker).
- **Wiremock**: Mocking third-party services to ensure pipeline isolation and non-flakiness.
- **Allure Reports**: Integrated through `pytest-allure` to aggregate and output unified executive reports.

### How to Run Locally
Spin up the required containers:
```bash
docker compose up -d
```
Then, execute the suite via pytest:
```bash
pytest api-db-integration/ --alluredir=allure-results
```

---

<a id="español"></a>
## Español

### Objetivo
Esta capa se centra en las pruebas de integración profunda entre la API y su capa de persistencia. El objetivo es validar el comportamiento "Shift-Left" de la Base de Datos. En lugar de confiar simplemente en los códigos de estado HTTP de la API (ej. 201 Created), utilizamos conexiones directas a través de `SQLAlchemy` y `psycopg2` en PostgreSQL para realizar **Aserciones Profundas** (Deep Assertions), verificando si los datos realmente se escribieron en los bloques de almacenamiento físico, aislado completamente a través de Docker Compose.

### Arquitectura y Herramientas
- **Pytest**: El framework principal para orquestar los casos de prueba.
- **SQLAlchemy & psycopg2**: Bibliotecas para ejecutar consultas SQL directas dentro de la aserción de calidad.
- **PostgreSQL**: El motor de la base de datos (virtualizado vía Docker).
- **Wiremock**: Burlón de servicios de terceros para garantizar el aislamiento y la estabilidad del pipeline.
- **Allure Reports**: Integrado vía `pytest-allure` para agregar y generar reportes ejecutivos unificados.

### Cómo Ejecutar Localmente
Levante los contenedores necesarios:
```bash
docker compose up -d
```
Y luego, ejecute la suite usando pytest:
```bash
pytest api-db-integration/ --alluredir=allure-results
```
