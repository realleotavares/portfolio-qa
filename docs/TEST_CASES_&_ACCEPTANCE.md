# Test Cases & Acceptance Criteria Traceability

This matrix connects the fictional business requirements (Acceptance Criteria) to the automated test scenarios implemented across the frameworks. This ensures that every line of automation delivers actual business value.

## 1. SauceDemo (E-commerce UI)

| Feature | Acceptance Criteria (AC) | Test Scenario / Assertion Type | Automated Framework | Status |
|---------|--------------------------|--------------------------------|---------------------|--------|
| **Login** | As a Standard User, I must be able to log in with valid credentials. | `should complete a purchase successfully (Standard User)` | Playwright / Robot | ✅ |
| **Login** | Users with blocked accounts must see a strict error message and cannot access the inventory. | `should fail to login with locked out user` (Asserts exact error string) | Playwright | ✅ |
| **Cart** | When adding an item to the cart, the shopping badge must increment to reflect the quantity. | `Add Product To Cart` & `Verify Cart Badge Count` | Playwright / Robot | ✅ |
| **Checkout** | The total checkout price must be the exact mathematical sum of the Item Price + Tax. | **Deep Math Assertion:** `expect(total).toBeCloseTo(itemPrice + tax, 2)` | Playwright | ✅ |
| **Cart DOM** | The cart DOM must physically hold the correct price and quantity attributes for backend processing. | **Deep DOM Assertion:** `Verify Product Price And Quantity` | Robot | ✅ |

---

## 2. Restful Booker (API Backend)

| Feature | Acceptance Criteria (AC) | Test Scenario / Assertion Type | Automated Framework | Status |
|---------|--------------------------|--------------------------------|---------------------|--------|
| **Create** | A new booking must be accepted if the JSON payload strictly follows the system schema. | `test_create_booking_schema_validation` (jsonschema validation) | Pytest | ✅ |
| **Create** | The system must persist the newly created booking in the database. | **Deep Assertion:** Queries `GET /booking/{id}` to verify data persistence. | Pytest | ✅ |
| **Update** | Modifying a booking requires an active Authorization Token. | `test_update_booking_requires_auth` (Passes auth headers) | Pytest | ✅ |
| **Update** | The updated payload must successfully replace the old data in the database. | **Deep Assertion:** Validates persistence of mutated fields via `GET`. | Pytest | ✅ |
| **Delete** | Deleting a booking must completely remove the resource, resulting in a 404 on subsequent queries. | `test_delete_booking` (Asserts 201 Created and then 404 Not Found) | Pytest | ✅ |
