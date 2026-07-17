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
