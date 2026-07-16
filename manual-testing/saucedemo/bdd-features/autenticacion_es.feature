# language: es
Característica: Autenticación de Usuarios
  Como un usuario del e-commerce SauceDemo
  Quiero poder iniciar sesión en el sistema
  Para que pueda ver el inventario y realizar compras

  Antecedentes:
    Dado que estoy en la página de inicio de sesión de SauceDemo

  @positive @smoke
  Escenario: Inicio de sesión exitoso usando credenciales válidas
    Cuando lleno el campo de usuario con "standard_user"
    Y lleno el campo de contraseña con "secret_sauce"
    Y hago clic en el botón de Login
    Entonces debo ser redirigido a la página de inventario
    Y el título de la página debe ser "Swag Labs"

  @negative @security
  Escenario: Intento de inicio de sesión con usuario bloqueado
    Cuando lleno el campo de usuario con "locked_out_user"
    Y lleno el campo de contraseña con "secret_sauce"
    Y hago clic en el botón de Login
    Entonces no debo ser redirigido a la página de inventario
    Y el sistema debe mostrar un mensaje de error que contiene "Epic sadface: Sorry, this user has been locked out."

  @negative
  Esquema del escenario: Intentos de inicio de sesión inválidos
    Cuando lleno el campo de usuario con "<usuario>"
    Y lleno el campo de contraseña con "<contraseña>"
    Y hago clic en el botón de Login
    Entonces el sistema debe mostrar un mensaje de error que contiene "<mensaje_error>"

    Ejemplos:
      | usuario       | contraseña   | mensaje_error                                               |
      | standard_user | errada123    | Epic sadface: Username and password do not match any user   |
      | usuario_falso | secret_sauce | Epic sadface: Username and password do not match any user   |
      |               | secret_sauce | Epic sadface: Username is required                          |
      | standard_user |              | Epic sadface: Password is required                          |
