[Português](#português) | [English](#english) | [Español](#español)

<a id="português"></a>
# Portfólio de Automação UI BDD com Robot Framework

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?logo=robotframework&logoColor=white)](https://robotframework.org/)

Módulo de automação baseada em Behavior Driven Development (BDD).
Este repositório demonstra minha habilidade em traduzir requisitos de negócio complexos em automações de interface de usuário (UI) executáveis e legíveis, utilizando o Robot Framework em conjunto com a biblioteca moderna baseada em Playwright.

## Arquitetura do Módulo (Keyword-Driven)

Os testes são isolados em sandboxes autorizados utilizando uma abordagem corporativa Keyword-Driven. Esta arquitetura separa estritamente a linguagem técnica (como manipulação de DOM) do vocabulário de negócio.

```text
📁 e2e-robot/
├── 📄 README.md                   # Este documento
│
└── 📁 saucedemo/                  # Fluxo de Teste BDD
    ├── 📁 resources/              # Palavras-chave customizadas
    │   └── 📄 keywords.resource   # Abstração técnica e manipulação da UI
    └── 📁 tests/                  # Execução orientada ao comportamento
        └── 📄 login.robot         # Cenários de teste BDD em linguagem humana
```

## Quick Start (Onboarding)

Quer rodar estes testes na sua máquina local?

**Pré-requisitos:** [Python](https://www.python.org/downloads/) (v3.11+) e [Node.js](https://nodejs.org/) (v18+)

```bash
# 1. Navegue para o diretório
cd e2e-robot

# 2. Crie e ative o ambiente virtual
python -m venv venv
source venv/bin/activate  # No Windows use: venv\Scripts\activate

# 3. Instale o Robot Framework e a biblioteca Browser (Playwright)
pip install robotframework robotframework-browser

# 4. Inicialize as dependências do Node.js internas do Browser
rfbrowser init

# 5. Rode a suíte BDD do SauceDemo
robot saucedemo/tests/
```

---
*Este módulo é governado por rigorosos padrões de Clean Code e Behavior Driven Development.*

<br><br><br>

<a id="english"></a>
# Robot Framework BDD UI Automation Portfolio

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?logo=robotframework&logoColor=white)](https://robotframework.org/)

Behavior Driven Development (BDD) automation module.
This repository demonstrates my ability to translate complex business requirements into executable and readable User Interface (UI) automations, using the Robot Framework alongside the modern Playwright-backed library.

## Module Architecture (Keyword-Driven)

Tests are isolated in authorized sandboxes using an enterprise Keyword-Driven approach. This architecture strictly separates technical language (like DOM manipulation) from the business vocabulary.

```text
📁 e2e-robot/
├── 📄 README.md                   # This document
│
└── 📁 saucedemo/                  # BDD Test Flow
    ├── 📁 resources/              # Custom Keywords
    │   └── 📄 keywords.resource   # Technical abstraction and UI manipulation
    └── 📁 tests/                  # Behavior-driven execution
        └── 📄 login.robot         # BDD test scenarios in human-readable language
```

## Quick Start (Onboarding)

Want to run these tests on your local machine?

**Prerequisites:** [Python](https://www.python.org/downloads/) (v3.11+) and [Node.js](https://nodejs.org/) (v18+)

```bash
# 1. Navigate to the directory
cd e2e-robot

# 2. Create and activate the virtual environment
python -m venv venv
source venv/bin/activate  # On Windows use: venv\Scripts\activate

# 3. Install Robot Framework and the Browser library (Playwright)
pip install robotframework robotframework-browser

# 4. Initialize internal Node.js Browser dependencies
rfbrowser init

# 5. Run the SauceDemo BDD Suite
robot saucedemo/tests/
```

---
*This module is governed by strict Clean Code and Behavior Driven Development standards.*

<br><br><br>

<a id="español"></a>
# Portafolio de Automatización UI BDD con Robot Framework

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![Robot Framework](https://img.shields.io/badge/Robot_Framework-000000?logo=robotframework&logoColor=white)](https://robotframework.org/)

Módulo de automatización basada en Behavior Driven Development (BDD).
Este repositorio demuestra mi habilidad para traducir requisitos de negocio complejos en automatizaciones de interfaz de usuario (UI) ejecutables y legibles, utilizando Robot Framework junto con la biblioteca moderna basada en Playwright.

## Arquitectura del Módulo (Keyword-Driven)

Las pruebas están aisladas en sandboxes autorizados utilizando un enfoque corporativo Keyword-Driven. Esta arquitectura separa estrictamente el lenguaje técnico (como la manipulación del DOM) del vocabulario de negocio.

```text
📁 e2e-robot/
├── 📄 README.md                   # Este documento
│
└── 📁 saucedemo/                  # Flujo de Prueba BDD
    ├── 📁 resources/              # Palabras clave personalizadas
    │   └── 📄 keywords.resource   # Abstracción técnica y manipulación de la UI
    └── 📁 tests/                  # Ejecución orientada al comportamiento
        └── 📄 login.robot         # Escenarios de prueba BDD en lenguaje humano
```

## Quick Start (Onboarding)

¿Quieres ejecutar estas pruebas en tu máquina local?

**Requisitos previos:** [Python](https://www.python.org/downloads/) (v3.11+) y [Node.js](https://nodejs.org/) (v18+)

```bash
# 1. Navegar al directorio
cd e2e-robot

# 2. Crear y activar el entorno virtual
python -m venv venv
source venv/bin/activate  # En Windows usar: venv\Scripts\activate

# 3. Instalar Robot Framework y la biblioteca Browser (Playwright)
pip install robotframework robotframework-browser

# 4. Inicializar las dependencias de Node.js internas de Browser
rfbrowser init

# 5. Ejecutar la suite BDD de SauceDemo
robot saucedemo/tests/
```

---
*Este módulo se rige por estrictos estándares de Clean Code y Behavior Driven Development.*
