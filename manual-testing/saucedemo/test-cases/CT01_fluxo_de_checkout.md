[Português](#português) | [English](#english) | [Español](#español)

---

<a id="português"></a>
# CT01 - Fluxo Completo de Checkout (End-to-End Manual)

**ID:** TC-SD-001  
**Módulo:** E-commerce / Checkout  
**Prioridade:** Alta (P0)  
**Autor:** Leo Tavares  
**Ambiente:** SauceDemo (`https://www.saucedemo.com/`)  

### Pré-condições
1. O usuário deve ter acesso ao sistema web do SauceDemo.
2. O usuário não deve ter produtos previamente adicionados ao carrinho.

### Procedimento de Execução

| Passo | Ação do Usuário (O que eu faço) | Resultado Esperado (O que o sistema deve fazer) | Status |
|---|---|---|---|
| 1 | Acessar a URL do sistema (`https://www.saucedemo.com/`). | A tela de login deve ser exibida corretamente. | Não Executado |
| 2 | Inserir as credenciais válidas (`standard_user` / `secret_sauce`) e clicar no botão "Login". | O usuário deve ser redirecionado para a página de inventário de produtos. | Não Executado |
| 3 | Localizar o produto "Sauce Labs Backpack" e clicar no botão "Add to cart". | O botão deve mudar para "Remove" e o ícone do carrinho deve exibir um emblema com o número "1". | Não Executado |
| 4 | Clicar no ícone do carrinho no canto superior direito. | O usuário deve ser redirecionado para a página `Your Cart`, e o produto "Sauce Labs Backpack" deve estar listado com quantidade 1. | Não Executado |
| 5 | Clicar no botão "Checkout". | A página "Checkout: Your Information" deve ser carregada. | Não Executado |
| 6 | Preencher os campos *First Name*, *Last Name* e *Zip/Postal Code* com dados válidos, e clicar em "Continue". | A página "Checkout: Overview" deve ser exibida com os dados corretos do produto, subtotal e total com taxas. | Não Executado |
| 7 | Clicar no botão "Finish". | O sistema deve exibir a mensagem de sucesso "Thank you for your order!" confirmando a finalização da compra. | Não Executado |

### Observações
- Este teste manual serve como base lógica direta para o script automatizado escrito em Playwright encontrado na camada `e2e-playwright`.

---

<a id="english"></a>
# TC01 - Complete Checkout Flow (Manual End-to-End)

**ID:** TC-SD-001  
**Module:** E-commerce / Checkout  
**Priority:** High (P0)  
**Author:** Leo Tavares  
**Environment:** SauceDemo (`https://www.saucedemo.com/`)  

### Preconditions
1. The user must have access to the SauceDemo web system.
2. The user must not have any products previously added to the cart.

### Execution Procedure

| Step | User Action (What I do) | Expected Result (What the system should do) | Status |
|---|---|---|---|
| 1 | Access the system URL (`https://www.saucedemo.com/`). | The login screen should be displayed correctly. | Unexecuted |
| 2 | Enter valid credentials (`standard_user` / `secret_sauce`) and click the "Login" button. | The user should be redirected to the product inventory page. | Unexecuted |
| 3 | Locate the product "Sauce Labs Backpack" and click the "Add to cart" button. | The button should change to "Remove" and the cart icon should display a badge with the number "1". | Unexecuted |
| 4 | Click the cart icon in the top right corner. | The user should be redirected to the `Your Cart` page, and the product "Sauce Labs Backpack" should be listed with a quantity of 1. | Unexecuted |
| 5 | Click the "Checkout" button. | The "Checkout: Your Information" page should be loaded. | Unexecuted |
| 6 | Fill in the *First Name*, *Last Name*, and *Zip/Postal Code* fields with valid data, and click "Continue". | The "Checkout: Overview" page should be displayed with the correct product data, subtotal, and total with taxes. | Unexecuted |
| 7 | Click the "Finish" button. | The system should display the success message "Thank you for your order!" confirming the purchase completion. | Unexecuted |

### Notes
- This manual test serves as the direct logical basis for the automated script written in Playwright found in the `e2e-playwright` layer.

---

<a id="español"></a>
# CP01 - Flujo Completo de Checkout (End-to-End Manual)

**ID:** TC-SD-001  
**Módulo:** E-commerce / Checkout  
**Prioridad:** Alta (P0)  
**Autor:** Leo Tavares  
**Entorno:** SauceDemo (`https://www.saucedemo.com/`)  

### Precondiciones
1. El usuario debe tener acceso al sistema web de SauceDemo.
2. El usuario no debe tener productos añadidos previamente al carrito.

### Procedimiento de Ejecución

| Paso | Acción del Usuario (Lo que yo hago) | Resultado Esperado (Lo que el sistema debe hacer) | Estado |
|---|---|---|---|
| 1 | Acceder a la URL del sistema (`https://www.saucedemo.com/`). | La pantalla de inicio de sesión debe mostrarse correctamente. | No Ejecutado |
| 2 | Ingresar credenciales válidas (`standard_user` / `secret_sauce`) y hacer clic en el botón "Login". | El usuario debe ser redirigido a la página de inventario de productos. | No Ejecutado |
| 3 | Ubicar el producto "Sauce Labs Backpack" y hacer clic en el botón "Add to cart". | El botón debe cambiar a "Remove" y el icono del carrito debe mostrar un emblema con el número "1". | No Ejecutado |
| 4 | Hacer clic en el icono del carrito en la esquina superior derecha. | El usuario debe ser redirigido a la página `Your Cart`, y el producto "Sauce Labs Backpack" debe aparecer con una cantidad de 1. | No Ejecutado |
| 5 | Hacer clic en el botón "Checkout". | La página "Checkout: Your Information" debe cargarse. | No Ejecutado |
| 6 | Rellenar los campos *First Name*, *Last Name* y *Zip/Postal Code* con datos válidos, y hacer clic en "Continue". | La página "Checkout: Overview" debe mostrarse con los datos correctos del producto, subtotal y total con impuestos. | No Ejecutado |
| 7 | Hacer clic en el botón "Finish". | El sistema debe mostrar el mensaje de éxito "Thank you for your order!" confirmando la finalización de la compra. | No Ejecutado |

### Notas
- Esta prueba manual sirve como base lógica directa para el script automatizado escrito en Playwright que se encuentra en la capa `e2e-playwright`.
