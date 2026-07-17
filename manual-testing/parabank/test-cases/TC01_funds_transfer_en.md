# TC01 - Funds Transfer Between Accounts

**ID:** TC-PBK-001  
**Module:** Transfer Funds (Banking Services)  
**Priority:** Critical (P0)  
**Author:** Leo Tavares  
**Environment:** ParaBank (`https://parabank.parasoft.com/`)  

### Preconditions
1. The user must be logged into ParaBank.
2. The user must have at least two active accounts (e.g., Checking and Savings).
3. The source account must have sufficient balance for the transfer.

### Execution Procedure

| Step | User Action (What I do) | Expected Result (What the system should do) | Status |
|---|---|---|---|
| 1 | In the side menu, click the "Transfer Funds" link. | The system should redirect to the "Transfer Funds" page. | Unexecuted |
| 2 | Wait for the account selection comboboxes (dropdowns) to load. | The "From account" and "To account" fields should be populated with the user's account numbers. | Unexecuted |
| 3 | Enter the value "150.00" in the *Amount* field. | The numeric field should accept the value. | Unexecuted |
| 4 | Select the source account in the *From account* field. | The account should be selected. | Unexecuted |
| 5 | Select the destination account in the *To account* field. | The account should be selected and must be different from the source account. | Unexecuted |
| 6 | Click the "Transfer" button. | The system should process the transaction and display the success message "Transfer Complete!". The screen should also confirm the transferred amount and the accounts involved. | Unexecuted |
| 7 | Click the "Accounts Overview" link in the side menu. | The balance of the source account should be reduced by $150.00 and the balance of the destination account increased by the same amount. | Unexecuted |

### Notes
- Financial tests require *Boundary Value Analysis*. The scenario above validates only the Happy Path. In actual execution, one should attempt to transfer an amount greater than the balance or a negative/zero value.
