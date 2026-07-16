# language: pt
Funcionalidade: Autenticação de Usuários
  Como um usuário do e-commerce SauceDemo
  Eu quero poder fazer login no sistema
  Para que eu possa visualizar o inventário e fazer compras

  Contexto:
    Dado que eu estou na página de login do SauceDemo

  @positive @smoke
  Cenário: Login com sucesso usando credenciais válidas
    Quando eu preencho o campo de usuário com "standard_user"
    E eu preencho o campo de senha com "secret_sauce"
    E eu clico no botão de Login
    Então eu devo ser redirecionado para a página de inventário
    E o título da página deve ser "Swag Labs"

  @negative @security
  Cenário: Tentativa de login com usuário bloqueado
    Quando eu preencho o campo de usuário com "locked_out_user"
    E eu preencho o campo de senha com "secret_sauce"
    E eu clico no botão de Login
    Então eu não devo ser redirecionado para a página de inventário
    E o sistema deve exibir uma mensagem de erro contendo "Epic sadface: Sorry, this user has been locked out."

  @negative
  Esquema do Cenário: Tentativas de login inválidas
    Quando eu preencho o campo de usuário com "<usuario>"
    E eu preencho o campo de senha com "<senha>"
    E eu clico no botão de Login
    Então o sistema deve exibir uma mensagem de erro contendo "<mensagem_erro>"

    Exemplos:
      | usuario       | senha        | mensagem_erro                                               |
      | standard_user | errada123    | Epic sadface: Username and password do not match any user   |
      | usuario_falso | secret_sauce | Epic sadface: Username and password do not match any user   |
      |               | secret_sauce | Epic sadface: Username is required                          |
      | standard_user |              | Epic sadface: Password is required                          |
