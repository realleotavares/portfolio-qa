[Português](#português) | [English](#english) | [Español](#español)

---

<a id="português"></a>
# Camada de Testes de Contrato

### Objetivo
Esta camada é dedicada aos Testes de Contrato, uma prática avançada de "Shift-Left Testing" em arquiteturas de microserviços. Seu objetivo central é evitar a quebra de compatibilidade em pipelines de CI/CD. Em vez de depender de pesados testes de ponta a ponta (E2E) para descobrir se o Backend alterou a estrutura do JSON que o Frontend consome, nós definimos um "Contrato" imutável e verificamos se o Provider (Fornecedor da API) continua respeitando estritamente o Schema Acordado.

### Arquitetura e Ferramentas
- **Pact-Python**: A principal biblioteca líder da indústria que orquestra a geração e verificação do contrato (Mock Provider e Verificação Consumer-Driven).
- **Pytest**: Framework Python utilizado para compilar o contrato e assertir o Mock do provider.
- **Allure Reports**: Emite logs limpos de testes de contrato junto com os relatórios de Backend (agregados via CI).

### Como Executar Localmente
Você pode rodar as verificações de contrato do Consumer de forma independente executando:
```bash
pytest contract-tests/ --alluredir=allure-results
```

---

<a id="english"></a>
# Contract Testing Layer

### Objective
This layer is dedicated to Contract Testing, an advanced "Shift-Left Testing" practice in microservices architectures. Its central goal is to prevent integration breakage in CI/CD pipelines. Instead of relying on slow and heavy End-to-End (E2E) tests to find out if the Backend changed the JSON payload structure that the Frontend consumes, we define an immutable "Contract" and automatically verify if the Provider (API Server) still strictly respects the Agreed Schema.

### Architecture and Tools
- **Pact-Python**: The industry standard library that orchestrates the generation and verification of the contract (Mock Provider and Consumer-Driven Verification).
- **Pytest**: Python framework utilized to compile the contract and assert the provider Mock.
- **Allure Reports**: Emits clean contract testing logs aggregated alongside Backend reports in CI.

### How to Run Locally
You can run the Consumer contract verifications independently by executing:
```bash
pytest contract-tests/ --alluredir=allure-results
```

---

<a id="español"></a>
# Capa de Pruebas de Contrato

### Objetivo
Esta capa está dedicada a las Pruebas de Contrato, una práctica avanzada de "Shift-Left Testing" en arquitecturas de microservicios. Su objetivo central es evitar la ruptura de compatibilidad en las tuberías de CI/CD. En lugar de depender de pruebas pesadas de extremo a extremo (E2E) para descubrir si el Backend cambió la estructura JSON que consume el Frontend, definimos un "Contrato" inmutable y verificamos si el Proveedor (API Server) continúa respetando estrictamente el Esquema Acordado.

### Arquitectura y Herramientas
- **Pact-Python**: La biblioteca estándar de la industria que orquesta la generación y verificación del contrato (Mock Provider y Consumer-Driven Verification).
- **Pytest**: Marco Python utilizado para compilar el contrato y afirmar el Mock del proveedor.
- **Allure Reports**: Emite registros limpios de pruebas de contrato junto con los informes de Backend (agregados en CI).

### Cómo Ejecutar Localmente
Puede ejecutar las verificaciones de contrato del Consumer de forma independiente ejecutando:
```bash
pytest contract-tests/ --alluredir=allure-results
```
