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
