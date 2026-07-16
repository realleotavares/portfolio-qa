# CT01 - Fluxo Completo de Checkout (End-to-End Manual)

**ID:** TC-SD-001  
**Módulo:** E-commerce / Checkout  
**Prioridade:** Alta (P0)  
**Autor:** Leo Tavares  
**Ambiente:** SauceDemo (`https://www.saucedemo.com/`)  

### Pré-condições
1. O usuário deve ter acesso ao sistema web do SauceDemo.
2. O usuário não deve ter produtos previamente adicionados ao carrinho.

---

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
