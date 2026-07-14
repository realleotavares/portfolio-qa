[Português](#português) | [English](#english) | [Español](#español)

<a id="português"></a>
# Portfólio de Automação de API com Pytest

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![Pytest](https://img.shields.io/badge/Pytest-0A9EDC?logo=pytest&logoColor=white)](https://docs.pytest.org/)

Módulo de automação de testes de API e garantia de qualidade de backend.
Este repositório demonstra minha capacidade de validar a integridade de dados, manipular requisições HTTP e implementar asserções corporativas diretamente em código, sem uso de simulações irreais (mocks).

## Arquitetura do Módulo

Os scripts de teste estão organizados para direcionar integrações a um sandbox de ambiente real, focando estritamente em qualidade de dados e conformidade de schemas.

```text
📁 api-pytest/
├── 📄 README.md                   # Este documento
├── 📄 requirements.txt            # Dependências Python (Pytest, jsonschema, Requests)
│
└── 📁 restful-booker/             # Validações CRUD e de Schemas JSON
    ├── 📄 conftest.py             # Fixtures para injeção de tokens de autorização
    ├── 📁 schemas/                # Schemas JSON rigorosos (jsonschema)
    └── 📁 tests/                  # Testes diretos contra os endpoints reais (Sem mocks)
```

## Quick Start (Onboarding)

Quer rodar estes testes na sua máquina? Leva menos de 1 minuto.

**Pré-requisitos:** [Python](https://www.python.org/downloads/) (v3.11+)

```bash
# 1. Navegue para o diretório
cd api-pytest

# 2. Crie e ative um ambiente virtual
python -m venv venv
source venv/bin/activate  # No Windows use: venv\Scripts\activate

# 3. Instale as dependências
pip install -r requirements.txt

# 4. Rode a suíte de API
pytest restful-booker/tests/ -v
```

---
*Este módulo é governado por rigorosos padrões de Clean Code e engenharia de backend.*

<br><br><br>

<a id="english"></a>
# Pytest API Automation Portfolio

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![Pytest](https://img.shields.io/badge/Pytest-0A9EDC?logo=pytest&logoColor=white)](https://docs.pytest.org/)

Backend quality assurance and API test automation module.
This repository demonstrates my ability to validate data integrity, handle HTTP requests, and implement corporate-level test assertions directly in code, without the use of unrealistic simulations (mocks).

## Module Architecture

The test scripts are organized to target real-environment sandbox integrations, focusing strictly on data quality and schema compliance.

```text
📁 api-pytest/
├── 📄 README.md                   # This document
├── 📄 requirements.txt            # Python dependencies (Pytest, jsonschema, Requests)
│
└── 📁 restful-booker/             # CRUD and JSON Schema Validations
    ├── 📄 conftest.py             # Fixtures for authorization token injection
    ├── 📁 schemas/                # Rigorous JSON Schemas (jsonschema)
    └── 📁 tests/                  # Direct tests against real endpoints (No mocks)
```

## Quick Start (Onboarding)

Want to run these API tests locally? It takes less than a minute.

**Prerequisites:** [Python](https://www.python.org/downloads/) (v3.11+)

```bash
# 1. Navigate to the directory
cd api-pytest

# 2. Create and activate a virtual environment
python -m venv venv
source venv/bin/activate  # On Windows use: venv\Scripts\activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Run the API Test Suite
pytest restful-booker/tests/ -v
```

---
*This module is governed by strict Clean Code and backend engineering standards.*

<br><br><br>

<a id="español"></a>
# Portafolio de Automatización de API con Pytest

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![Pytest](https://img.shields.io/badge/Pytest-0A9EDC?logo=pytest&logoColor=white)](https://docs.pytest.org/)

Módulo de automatización de pruebas de API y garantía de calidad de backend.
Este repositorio demuestra mi capacidad para validar la integridad de los datos, manipular peticiones HTTP e implementar aserciones a nivel corporativo directamente en el código, sin el uso de simulaciones irreales (mocks).

## Arquitectura del Módulo

Los scripts de prueba están organizados para integrar simulaciones en un entorno sandbox real, enfocándose estrictamente en la calidad de los datos y el cumplimiento de esquemas.

```text
📁 api-pytest/
├── 📄 README.md                   # Este documento
├── 📄 requirements.txt            # Dependencias de Python (Pytest, jsonschema, Requests)
│
└── 📁 restful-booker/             # Validaciones CRUD y de Esquemas JSON
    ├── 📄 conftest.py             # Fixtures para inyección de tokens de autorización
    ├── 📁 schemas/                # Esquemas JSON rigurosos (jsonschema)
    └── 📁 tests/                  # Pruebas directas contra los endpoints reales (Sin mocks)
```

## Quick Start (Onboarding)

¿Quieres ejecutar estas pruebas en tu máquina? Toma menos de un minuto.

**Requisitos previos:** [Python](https://www.python.org/downloads/) (v3.11+)

```bash
# 1. Navegar al directorio
cd api-pytest

# 2. Crear y activar un entorno virtual
python -m venv venv
source venv/bin/activate  # En Windows usar: venv\Scripts\activate

# 3. Instalar dependencias
pip install -r requirements.txt

# 4. Ejecutar la suite de API
pytest restful-booker/tests/ -v
```

---
*Este módulo se rige por estrictos estándares de Clean Code e ingeniería de backend.*
