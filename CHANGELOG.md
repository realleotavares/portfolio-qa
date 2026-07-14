# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Added
- GitHub Projects simulation for issue tracking (Jira Simulation).
- Risk Matrix mapping business requirements to automated test coverage.
- Wiremock container for 3rd-party API dependency isolation.
- Contract testing framework using pact-python.
- Local Database persistence testing using PostgreSQL and SQLAlchemy.

---

## [2.0.0] - 2026-07-14

### Changed
- Monorepo restructuring to include E2E (Playwright/Robot), API (Pytest), and Performance (k6) layers.
- Full documentation translation to Portuguese, English, and Spanish.
- Upgraded Playwright to version 1.45.1.
- Complete README overhaul focusing on Strategic QA Vision.

### Added
- Comprehensive Bug Reports, Test Plans, and Acceptance Criteria documentation.
- Flakiness prevention measures (retries, timeouts, isolated fixtures).

---

## [1.0.0] - 2023-01-10

### Added
- Initial Playwright UI automation for standard checkout flows.
- Basic API testing layer using standard Python `requests`.
