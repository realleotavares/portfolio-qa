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
