[Português](#português) | [English](#english) | [Español](#español)

---

<a id="português"></a>
# CT01 - Transferência de Fundos entre Contas

**ID:** TC-PBK-001  
**Módulo:** Transfer Funds (Serviços Bancários)  
**Prioridade:** Crítica (P0)  
**Autor:** Leo Tavares  
**Ambiente:** ParaBank (`https://parabank.parasoft.com/`)  

### Pré-condições
1. O usuário deve estar logado no ParaBank.
2. O usuário deve possuir no mínimo duas contas ativas (ex: Checking e Savings).
3. A conta de origem deve possuir saldo suficiente para a transferência.

### Procedimento de Execução

| Passo | Ação do Usuário (O que eu faço) | Resultado Esperado (O que o sistema deve fazer) | Status |
|---|---|---|---|
| 1 | No menu lateral, clicar no link "Transfer Funds". | O sistema deve redirecionar para a página "Transfer Funds". | Não Executado |
| 2 | Aguardar o carregamento dos comboboxes (dropdowns) de seleção de contas. | Os campos "From account" e "To account" devem ser preenchidos com os números das contas do usuário. | Não Executado |
| 3 | Inserir o valor "150.00" no campo *Amount*. | O campo numérico deve aceitar o valor. | Não Executado |
| 4 | Selecionar a conta de origem no campo *From account*. | A conta deve ser selecionada. | Não Executado |
| 5 | Selecionar a conta de destino no campo *To account*. | A conta deve ser selecionada, devendo ser diferente da conta de origem. | Não Executado |
| 6 | Clicar no botão "Transfer". | O sistema deve processar a transação e exibir a mensagem de sucesso "Transfer Complete!". A tela também deve confirmar o valor transferido e as contas envolvidas. | Não Executado |
| 7 | Clicar no link "Accounts Overview" no menu lateral. | O saldo da conta de origem deve ter sido reduzido em $150.00 e o saldo da conta de destino aumentado no mesmo valor. | Não Executado |

### Observações
- Testes financeiros exigem validações de *Boundary Values* (Valores Limites). O cenário acima valida apenas o Caminho Feliz. Em execução real, deve-se tentar transferir um valor superior ao saldo ou valor negativo/zero.

---

<a id="english"></a>
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

---

<a id="español"></a>
# CP01 - Transferencia de Fondos entre Cuentas

**ID:** TC-PBK-001  
**Módulo:** Transfer Funds (Servicios Bancarios)  
**Prioridad:** Crítica (P0)  
**Autor:** Leo Tavares  
**Entorno:** ParaBank (`https://parabank.parasoft.com/`)  

### Precondiciones
1. El usuario debe haber iniciado sesión en ParaBank.
2. El usuario debe tener al menos dos cuentas activas (ej: Checking y Savings).
3. La cuenta de origen debe tener saldo suficiente para la transferencia.

### Procedimiento de Ejecución

| Paso | Acción del Usuario (Lo que yo hago) | Resultado Esperado (Lo que el sistema debe hacer) | Estado |
|---|---|---|---|
| 1 | En el menú lateral, hacer clic en el enlace "Transfer Funds". | El sistema debe redirigir a la página "Transfer Funds". | No Ejecutado |
| 2 | Esperar a que se carguen los comboboxes (menús desplegables) de selección de cuenta. | Los campos "From account" y "To account" deben completarse con los números de cuenta del usuario. | No Ejecutado |
| 3 | Ingresar el valor "150.00" en el campo *Amount*. | El campo numérico debe aceptar el valor. | No Ejecutado |
| 4 | Seleccionar la cuenta de origen en el campo *From account*. | La cuenta debe ser seleccionada. | No Ejecutado |
| 5 | Seleccionar la cuenta de destino en el campo *To account*. | La cuenta debe ser seleccionada y debe ser diferente de la cuenta de origen. | No Ejecutado |
| 6 | Hacer clic en el botón "Transfer". | El sistema debe procesar la transacción y mostrar el mensaje de éxito "Transfer Complete!". La pantalla también debe confirmar el monto transferido y las cuentas involucradas. | No Ejecutado |
| 7 | Hacer clic en el enlace "Accounts Overview" en el menú lateral. | El saldo de la cuenta de origen debe haberse reducido en $150.00 y el saldo de la cuenta de destino aumentado en la misma cantidad. | No Ejecutado |

### Notas
- Las pruebas financieras requieren *Análisis de Valores Límite* (Boundary Value Analysis). El escenario anterior valida solo el Camino Feliz (Happy Path). En la ejecución real, se debe intentar transferir un monto mayor al saldo o un valor negativo/cero.
