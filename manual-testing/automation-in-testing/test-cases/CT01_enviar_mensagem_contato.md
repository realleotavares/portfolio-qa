[Português](#português) | [English](#english) | [Español](#español)

---

<a id="português"></a>
# CT01 - Validação do Formulário de Contato

**ID:** TC-AIT-001  
**Módulo:** Formulário de Contato (Front-office)  
**Prioridade:** Média (P1)  
**Autor:** Leo Tavares  
**Ambiente:** Automation In Testing (`https://automationintesting.online/`)  

### Pré-condições
1. O usuário deve estar acessando a página inicial do Restful-Booker Platform.
2. Os serviços de backend devem estar operacionais.

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

---

<a id="english"></a>
# TC01 - Contact Form Validation

**ID:** TC-AIT-001  
**Module:** Contact Form (Front-office)  
**Priority:** Medium (P1)  
**Author:** Leo Tavares  
**Environment:** Automation In Testing (`https://automationintesting.online/`)  

### Preconditions
1. The user must be accessing the home page of the Restful-Booker Platform.
2. Backend services must be operational.

### Execution Procedure

| Step | User Action (What I do) | Expected Result (What the system should do) | Status |
|---|---|---|---|
| 1 | Scroll down to the "Let me hack you! / Contact Us" section. | The contact form should be visible with the fields: Name, Email, Phone, Subject, and Message. | Unexecuted |
| 2 | Enter "John Doe" in the *Name* field. | The field should accept the text. | Unexecuted |
| 3 | Enter "johndoe@example.com" in the *Email* field. | The field should accept the text. | Unexecuted |
| 4 | Enter "01234567890" in the *Phone* field. | The field should accept numbers and validate the minimum length of 11 characters. | Unexecuted |
| 5 | Enter "Reservation inquiry" in the *Subject* field. | The field should accept the text (length between 5 and 100 characters). | Unexecuted |
| 6 | Enter a valid message, with at least 20 characters, in the *Message* field. | The field should accept the text. | Unexecuted |
| 7 | Click the "Submit" button. | The system should send the message and display a confirmation on the screen: "Thanks for getting in touch John Doe!". | Unexecuted |

### Notes
- The API for this form often has intentional delays; evaluate the response time of the Submit button.

---

<a id="español"></a>
# CP01 - Validación del Formulario de Contacto

**ID:** TC-AIT-001  
**Módulo:** Formulario de Contacto (Front-office)  
**Prioridad:** Media (P1)  
**Autor:** Leo Tavares  
**Entorno:** Automation In Testing (`https://automationintesting.online/`)  

### Precondiciones
1. El usuario debe estar accediendo a la página de inicio de la Restful-Booker Platform.
2. Los servicios de backend deben estar operativos.

### Procedimiento de Ejecución

| Paso | Acción del Usuario (Lo que yo hago) | Resultado Esperado (Lo que el sistema debe hacer) | Estado |
|---|---|---|---|
| 1 | Desplazarse hacia abajo hasta la sección "Let me hack you! / Contact Us". | El formulario de contacto debe estar visible con los campos: Name, Email, Phone, Subject, y Message. | No Ejecutado |
| 2 | Ingresar "John Doe" en el campo *Name*. | El campo debe aceptar el texto. | No Ejecutado |
| 3 | Ingresar "johndoe@example.com" en el campo *Email*. | El campo debe aceptar el texto. | No Ejecutado |
| 4 | Ingresar "01234567890" en el campo *Phone*. | El campo debe aceptar números y validar la longitud mínima de 11 caracteres. | No Ejecutado |
| 5 | Ingresar "Duda sobre reserva" en el campo *Subject*. | El campo debe aceptar el texto (longitud entre 5 y 100 caracteres). | No Ejecutado |
| 6 | Ingresar un mensaje válido, con al menos 20 caracteres, en el campo *Message*. | El campo debe aceptar el texto. | No Ejecutado |
| 7 | Hacer clic en el botón "Submit". | El sistema debe enviar el mensaje y mostrar la confirmación en la pantalla: "Thanks for getting in touch John Doe!". | No Ejecutado |

### Notas
- La API de este formulario a menudo tiene retrasos intencionales; evalúe el tiempo de respuesta del botón Submit.
