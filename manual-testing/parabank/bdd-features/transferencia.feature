Feature: Transferência de Fundos Interbancária
  Como um correntista do ParaBank
  Eu quero poder transferir fundos entre minhas contas
  Para gerenciar minhas finanças de forma autônoma

  Background:
    Given que eu possuo a conta corrente "12345" com saldo de "$500.00"
    And que eu possuo a conta poupança "67890" com saldo de "$100.00"
    And eu estou autenticado no sistema ParaBank
    And eu acesso a página de "Transfer Funds"

  @positive @financial
  Scenario: Transferir fundos com sucesso entre contas
    When eu preencho o campo Amount com "100.00"
    And eu seleciono a conta "12345" no campo From account
    And eu seleciono a conta "67890" no campo To account
    And eu submeto a transação
    Then o sistema deve exibir a mensagem "Transfer Complete!"
    And o valor de "$100.00" deve ser debitado da conta "12345"
    And o valor de "$100.00" deve ser creditado na conta "67890"

  @negative @financial @boundary
  Scenario: Tentar transferir fundos sem saldo suficiente
    When eu preencho o campo Amount com "1000.00"
    And eu seleciono a conta "12345" no campo From account
    And eu seleciono a conta "67890" no campo To account
    And eu submeto a transação
    Then o sistema não deve processar a transferência
    And o sistema deve exibir a mensagem de erro "Insufficient Funds"
    And o saldo de ambas as contas deve permanecer inalterado
