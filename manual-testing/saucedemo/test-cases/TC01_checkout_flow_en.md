# TC01 - Complete Checkout Flow (Manual End-to-End)

**ID:** TC-SD-001  
**Module:** E-commerce / Checkout  
**Priority:** High (P0)  
**Author:** Leo Tavares  
**Environment:** SauceDemo (`https://www.saucedemo.com/`)  

### Preconditions
1. The user must have access to the SauceDemo web system.
2. The user must not have any products previously added to the cart.

### Execution Procedure

| Step | User Action (What I do) | Expected Result (What the system should do) | Status |
|---|---|---|---|
| 1 | Access the system URL (`https://www.saucedemo.com/`). | The login screen should be displayed correctly. | Unexecuted |
| 2 | Enter valid credentials (`standard_user` / `secret_sauce`) and click the "Login" button. | The user should be redirected to the product inventory page. | Unexecuted |
| 3 | Locate the product "Sauce Labs Backpack" and click the "Add to cart" button. | The button should change to "Remove" and the cart icon should display a badge with the number "1". | Unexecuted |
| 4 | Click the cart icon in the top right corner. | The user should be redirected to the `Your Cart` page, and the product "Sauce Labs Backpack" should be listed with a quantity of 1. | Unexecuted |
| 5 | Click the "Checkout" button. | The "Checkout: Your Information" page should be loaded. | Unexecuted |
| 6 | Fill in the *First Name*, *Last Name*, and *Zip/Postal Code* fields with valid data, and click "Continue". | The "Checkout: Overview" page should be displayed with the correct product data, subtotal, and total with taxes. | Unexecuted |
| 7 | Click the "Finish" button. | The system should display the success message "Thank you for your order!" confirming the purchase completion. | Unexecuted |

### Notes
- This manual test serves as the direct logical basis for the automated script written in Playwright found in the `e2e-playwright` layer.
