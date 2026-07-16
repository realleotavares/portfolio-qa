Feature: Reserva de Quartos
  Como um hóspede da pousada Restful-Booker
  Eu quero poder selecionar datas e reservar um quarto
  Para garantir minha estadia durante uma viagem

  Background:
    Given que eu estou na página inicial do Restful-Booker
    And o painel de reserva do quarto "Single" está visível

  @positive @reservation
  Scenario: Reservar um quarto em datas disponíveis
    When eu seleciono a data de início para o dia "15" do próximo mês
    And eu seleciono a data de fim para o dia "20" do próximo mês
    And eu clico no botão "Book this room"
    And eu preencho meus dados pessoais (Nome, Sobrenome, Email, Telefone)
    And eu confirmo a reserva
    Then o sistema deve processar a reserva com sucesso
    And eu devo visualizar a mensagem "Booking Successful!" com o sumário das datas

  @negative @reservation
  Scenario: Tentar reservar um quarto sem informar o primeiro nome
    When eu seleciono datas válidas no calendário
    And eu clico no botão "Book this room"
    And eu preencho meus dados pessoais, deixando o campo "Firstname" vazio
    And eu confirmo a reserva
    Then a reserva não deve ser criada
    And o sistema deve exibir o erro de validação "Firstname should not be blank" no formulário
