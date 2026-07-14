[Português](#português) | [English](#english) | [Español](#español)

<a id="português"></a>
# Portfólio de Automação E2E com Playwright

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Playwright](https://img.shields.io/badge/Playwright-2EAD33?logo=playwright&logoColor=white)](https://playwright.dev/)
[![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?logo=typescript&logoColor=white)](https://www.typescriptlang.org/)

Módulo de automação End-to-End (E2E) com Playwright.
Este repositório faz parte do meu ecossistema unificado de testes e foca na validação visual e estrutural de aplicações web utilizando sandboxes oficiais, aplicando padrões corporativos como o Page Object Model (POM).

## Arquitetura do Módulo

O padrão arquitetural isola as validações de UI em subprojetos direcionados a aplicações de treinamento estabelecidas.

```text
📁 e2e-playwright/
├── 📄 README.md                   # Este documento
├── 📄 package.json                # Dependências Node.js
│
├── 📁 saucedemo/                  # Fluxo de Checkout E2E
│   ├── 📁 pages/                  # Camada Page Object Model (LoginPage, CartPage, etc)
│   └── 📁 tests/                  # Testes focados no comportamento do usuário
│
└── 📁 the-internet/               # Testes Comportamentais Assíncronos
    └── 📁 tests/                  # Validações de Dynamic Loading e esperas explícitas
```

## Dashboard de Qualidade

> Nossa pipeline CI/CD publica automaticamente o relatório de execução do Playwright no GitHub Pages. Ele inclui traces completos, capturas de tela e vídeos de eventuais falhas durante as execuções contínuas.

## Quick Start (Onboarding)

**Pré-requisitos:** [Node.js](https://nodejs.org/) (v18+)

```bash
# 1. Navegue para o diretório
cd e2e-playwright

# 2. Instale as dependências
npm install

# 3. Instale os navegadores do Playwright
npx playwright install --with-deps chromium

# 4. Rode a suíte E2E do SauceDemo
cd saucedemo
npx playwright test tests/

# 5. Visualize o Relatório Interativo
npx playwright show-report
```

---
*Este módulo é governado por padrões de Clean Code, Page Object Model e Asserções Estritas.*

<br><br><br>

<a id="english"></a>
# Playwright E2E Automation Portfolio

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Playwright](https://img.shields.io/badge/Playwright-2EAD33?logo=playwright&logoColor=white)](https://playwright.dev/)
[![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?logo=typescript&logoColor=white)](https://www.typescriptlang.org/)

Playwright End-to-End (E2E) automation module.
This repository is part of my unified testing ecosystem and focuses on visual and structural web validation using official sandboxes, applying corporate patterns such as the Page Object Model (POM).

## Module Architecture

The architectural pattern isolates UI validations into subprojects targeting established training applications.

```text
📁 e2e-playwright/
├── 📄 README.md                   # This document
├── 📄 package.json                # Node.js dependencies
│
├── 📁 saucedemo/                  # E2E Checkout Flow
│   ├── 📁 pages/                  # Page Object Model Layer (LoginPage, CartPage, etc)
│   └── 📁 tests/                  # Tests focused on user behavior
│
└── 📁 the-internet/               # Asynchronous Behavioral Tests
    └── 📁 tests/                  # Dynamic Loading validations and explicit waits
```

## Quality Dashboard

> Our CI/CD pipeline automatically publishes the Playwright execution report to GitHub Pages. It includes full traces, screenshots, and videos of any failures during continuous executions.

## Quick Start (Onboarding)

**Prerequisites:** [Node.js](https://nodejs.org/) (v18+)

```bash
# 1. Navigate to the directory
cd e2e-playwright

# 2. Install dependencies
npm install

# 3. Install Playwright browsers
npx playwright install --with-deps chromium

# 4. Run the SauceDemo E2E Suite
cd saucedemo
npx playwright test tests/

# 5. View the Interactive Report
npx playwright show-report
```

---
*This module is governed by Clean Code patterns, Page Object Model, and Strict Assertions.*

<br><br><br>

<a id="español"></a>
# Portafolio de Automatización E2E con Playwright

[![CI/CD Pipeline](https://github.com/realleotavares/portfolio-qa/actions/workflows/ci.yml/badge.svg)](https://github.com/realleotavares/portfolio-qa/actions)
[![Playwright](https://img.shields.io/badge/Playwright-2EAD33?logo=playwright&logoColor=white)](https://playwright.dev/)
[![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?logo=typescript&logoColor=white)](https://www.typescriptlang.org/)

Módulo de automatización End-to-End (E2E) con Playwright.
Este repositorio forma parte de mi ecosistema unificado de pruebas y se centra en la validación visual y estructural de aplicaciones web utilizando sandboxes oficiales, aplicando patrones corporativos como el Page Object Model (POM).

## Arquitectura del Módulo

El patrón arquitectónico aísla las validaciones de UI en subproyectos dirigidos a aplicaciones de entrenamiento establecidas.

```text
📁 e2e-playwright/
├── 📄 README.md                   # Este documento
├── 📄 package.json                # Dependencias Node.js
│
├── 📁 saucedemo/                  # Flujo de Checkout E2E
│   ├── 📁 pages/                  # Capa Page Object Model (LoginPage, CartPage, etc)
│   └── 📁 tests/                  # Pruebas enfocadas en el comportamiento del usuario
│
└── 📁 the-internet/               # Pruebas de Comportamiento Asíncrono
    └── 📁 tests/                  # Validaciones de Dynamic Loading y esperas explícitas
```

## Dashboard de Calidad

> Nuestro pipeline CI/CD publica automáticamente el informe de ejecución de Playwright en GitHub Pages. Incluye rastros completos (traces), capturas de pantalla y videos de cualquier fallo durante las ejecuciones continuas.

## Quick Start (Onboarding)

**Requisitos previos:** [Node.js](https://nodejs.org/) (v18+)

```bash
# 1. Navegar al directorio
cd e2e-playwright

# 2. Instalar dependencias
npm install

# 3. Instalar navegadores de Playwright
npx playwright install --with-deps chromium

# 4. Ejecutar la suite E2E de SauceDemo
cd saucedemo
npx playwright test tests/

# 5. Ver el Informe Interactivo
npx playwright show-report
```

---
*Este módulo se rige por patrones de Clean Code, Page Object Model y Aserciones Estrictas.*
