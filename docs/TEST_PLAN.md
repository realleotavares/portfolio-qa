# Master Test Plan: QA Automation Hub

## 1. Executive Summary
This document outlines the strategic Quality Assurance approach for the **QA Automation Hub** portfolio. The objective is to demonstrate a mature, shift-left testing strategy that spans across multiple layers of the application architecture, from backend APIs to frontend UI and performance, adhering to the Test Automation Pyramid principles.

## 2. Test Strategy & The Automation Pyramid
Our testing strategy is designed to provide maximum risk coverage with optimal execution speed and maintainability.

### 2.1 Backend / API Layer (Pytest & Requests)
- **Objective:** Validate the business logic and database persistence of the Restful-Booker microservice.
- **Why Pytest?** It provides a robust, Python-native framework for rapid API testing with powerful `fixture` capabilities for setup/teardown state management.
- **Scope:** CRUD operations, Schema validation, Authentication, and Deep Assertions (validating actual database state, not just echo responses).

### 2.2 Frontend / UI Layer (Playwright & Robot Framework)
- **Objective:** Validate the end-user journeys (E2E) on the SauceDemo e-commerce platform.
- **Why Playwright?** Offers blazing-fast, cross-browser execution with built-in auto-waiting and network interception.
- **Why Robot Framework?** Implements Behavior-Driven Development (BDD), acting as a living documentation bridge between technical and business stakeholders (Product Owners, Business Analysts).
- **Scope:** Core revenue-generating flows (Authentication, Cart Management, Checkout Math Validation).

### 2.3 Performance Layer (K6)
- **Objective:** Ensure the backend can sustain expected user loads without degradation.
- **Why K6?** Developer-centric, JavaScript-based load testing tool that integrates seamlessly into CI/CD pipelines with configurable Service Level Agreements (SLAs).
- **Scope:** Stress/Load testing on the API layer, monitoring P95 response times and failure rates.

## 3. Risk Analysis & Mitigation
| Risk Factor | Probability | Impact | Mitigation Strategy |
|-------------|-------------|--------|---------------------|
| **Data Pollution** | High | Medium | Implemented intelligent Pytest `yield` fixtures to auto-delete generated test data regardless of test outcome (Clean State). |
| **Environment Flakiness** | High | High | Integrated `pytest-rerunfailures`, Playwright native retries, and increased Robot Browser timeouts to tolerate Heroku cold starts. |
| **False Positives** | Low | High | Replaced shallow UI assertions with Deep Assertions (mathematical calculations of the cart, DB state verification via API GET). |

## 4. Test Environment & CI/CD
- **Execution:** GitHub Actions triggers the full pipeline on every push/PR to the `main` branch.
- **Reporting:** Unified Allure, Playwright, Robot, and K6 reports are aggregated and deployed live to GitHub Pages.
- **Target Environments:**
  - UI: `https://www.saucedemo.com/`
  - API: `https://restful-booker.herokuapp.com/`
