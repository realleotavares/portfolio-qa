# CT01 - Validação do Formulário de Contato

**ID:** TC-AIT-001  
**Módulo:** Formulário de Contato (Front-office)  
**Prioridade:** Média (P1)  
**Autor:** Leo Tavares  
**Ambiente:** Automation In Testing (`https://automationintesting.online/`)  

### Pré-condições
1. O usuário deve estar acessando a página inicial do Restful-Booker Platform.
2. Os serviços de backend devem estar operacionais.

---

### Procedimento de Execução

| Passo | Ação do Usuário (O que eu faço) | Resultado Esperado (O que o sistema deve fazer) | Status |
|---|---|---|---|
| 1 | Rolar a página até a seção "Let me hack you! / Contact Us". | O formulário de contato deve estar visível com os campos: Name, Email, Phone, Subject e Message. | Não Executado |
| 2 | Inserir "John Doe" no campo *Name*. | O campo deve aceitar o texto. | Não Executado |
| 3 | Inserir "johndoe@example.com" no campo *Email*. | O campo deve aceitar o texto. | Não Executado |
| 4 | Inserir "01234567890" no campo *Phone*. | O campo deve aceitar numerais e validar o tamanho mínimo de 11 caracteres. | Não Executado |
| 5 | Inserir "Dúvida sobre reserva" no campo *Subject*. | O campo deve aceitar o texto (tamanho entre 5 e 100 caracteres). | Não Executado |
| 6 | Inserir uma mensagem válida, com pelo menos 20 caracteres, no campo *Message*. | O campo deve aceitar o texto. | Não Executado |
| 7 | Clicar no botão "Submit". | O sistema deve enviar a mensagem e exibir a confirmação na tela: "Thanks for getting in touch John Doe!". | Não Executado |

### Observações
- A API deste formulário frequentemente possui delays intencionais, avaliar o tempo de resposta do botão Submit.
