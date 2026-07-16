# language: pt
Funcionalidade: Transferência de Fundos Interbancária
  Como um correntista do ParaBank
  Eu quero poder transferir fundos entre minhas contas
  Para gerenciar minhas finanças de forma autônoma

  Contexto:
    Dado que eu possuo a conta corrente "12345" com saldo de "$500.00"
    E que eu possuo a conta poupança "67890" com saldo de "$100.00"
    E eu estou autenticado no sistema ParaBank
    E eu acesso a página de "Transfer Funds"

  @positive @financial
  Cenário: Transferir fundos com sucesso entre contas
    Quando eu preencho o campo Amount com "100.00"
    E eu seleciono a conta "12345" no campo From account
    E eu seleciono a conta "67890" no campo To account
    E eu submeto a transação
    Então o sistema deve exibir a mensagem "Transfer Complete!"
    E o valor de "$100.00" deve ser debitado da conta "12345"
    E o valor de "$100.00" deve ser creditado na conta "67890"

  @negative @financial @boundary
  Cenário: Tentar transferir fundos sem saldo suficiente
    Quando eu preencho o campo Amount com "1000.00"
    E eu seleciono a conta "12345" no campo From account
    E eu seleciono a conta "67890" no campo To account
    E eu submeto a transação
    Então o sistema não deve processar a transferência
    E o sistema deve exibir a mensagem de erro "Insufficient Funds"
    E o saldo de ambas as contas deve permanecer inalterado
