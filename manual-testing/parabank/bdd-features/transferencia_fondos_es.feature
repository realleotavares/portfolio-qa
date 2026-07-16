# language: es
Característica: Transferencia de Fondos Interbancaria
  Como un titular de cuenta en ParaBank
  Quiero poder transferir fondos entre mis cuentas
  Para gestionar mis finanzas de forma autónoma

  Antecedentes:
    Dado que tengo la cuenta corriente "12345" con un saldo de "$500.00"
    Y que tengo la cuenta de ahorros "67890" con un saldo de "$100.00"
    Y estoy autenticado en el sistema ParaBank
    Y accedo a la página de "Transfer Funds"

  @positive @financial
  Escenario: Transferir fondos con éxito entre cuentas
    Cuando lleno el campo Amount con "100.00"
    Y selecciono la cuenta "12345" en el campo From account
    Y selecciono la cuenta "67890" en el campo To account
    Y envío la transacción
    Entonces el sistema debe mostrar el mensaje "Transfer Complete!"
    Y el monto de "$100.00" debe ser debitado de la cuenta "12345"
    Y el monto de "$100.00" debe ser acreditado en la cuenta "67890"

  @negative @financial @boundary
  Escenario: Intentar transferir fondos sin saldo suficiente
    Cuando lleno el campo Amount con "1000.00"
    Y selecciono la cuenta "12345" en el campo From account
    Y selecciono la cuenta "67890" en el campo To account
    Y envío la transacción
    Entonces el sistema no debe procesar la transferencia
    Y el sistema debe mostrar el mensaje de error "Insufficient Funds"
    Y el saldo de ambas cuentas debe permanecer inalterado
