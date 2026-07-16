# language: pt
Funcionalidade: Reserva de Quartos
  Como um hóspede da pousada Restful-Booker
  Eu quero poder selecionar datas e reservar um quarto
  Para garantir minha estadia durante uma viagem

  Contexto:
    Dado que eu estou na página inicial do Restful-Booker
    E o painel de reserva do quarto "Single" está visível

  @positive @reservation
  Cenário: Reservar um quarto em datas disponíveis
    Quando eu seleciono a data de início para o dia "15" do próximo mês
    E eu seleciono a data de fim para o dia "20" do próximo mês
    E eu clico no botão "Book this room"
    E eu preencho meus dados pessoais (Nome, Sobrenome, Email, Telefone)
    E eu confirmo a reserva
    Então o sistema deve processar a reserva com sucesso
    E eu devo visualizar a mensagem "Booking Successful!" com o sumário das datas

  @negative @reservation
  Cenário: Tentar reservar um quarto sem informar o primeiro nome
    Quando eu seleciono datas válidas no calendário
    E eu clico no botão "Book this room"
    E eu preencho meus dados pessoais, deixando o campo "Firstname" vazio
    E eu confirmo a reserva
    Então a reserva não deve ser criada
    E o sistema deve exibir o erro de validação "Firstname should not be blank" no formulário
