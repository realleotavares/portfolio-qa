Feature: Autenticação de Usuários
  Como um usuário do e-commerce SauceDemo
  Eu quero poder fazer login no sistema
  Para que eu possa visualizar o inventário e fazer compras

  Background:
    Given que eu estou na página de login do SauceDemo

  @positive @smoke
  Scenario: Login com sucesso usando credenciais válidas
    When eu preencho o campo de usuário com "standard_user"
    And eu preencho o campo de senha com "secret_sauce"
    And eu clico no botão de Login
    Then eu devo ser redirecionado para a página de inventário
    And o título da página deve ser "Swag Labs"

  @negative @security
  Scenario: Tentativa de login com usuário bloqueado
    When eu preencho o campo de usuário com "locked_out_user"
    And eu preencho o campo de senha com "secret_sauce"
    And eu clico no botão de Login
    Then eu não devo ser redirecionado para a página de inventário
    And o sistema deve exibir uma mensagem de erro contendo "Epic sadface: Sorry, this user has been locked out."

  @negative
  Scenario Outline: Tentativas de login inválidas
    When eu preencho o campo de usuário com "<usuario>"
    And eu preencho o campo de senha com "<senha>"
    And eu clico no botão de Login
    Then o sistema deve exibir uma mensagem de erro contendo "<mensagem_erro>"

    Examples:
      | usuario       | senha        | mensagem_erro                                               |
      | standard_user | errada123    | Epic sadface: Username and password do not match any user   |
      | usuario_falso | secret_sauce | Epic sadface: Username and password do not match any user   |
      |               | secret_sauce | Epic sadface: Username is required                          |
      | standard_user |              | Epic sadface: Password is required                          |
