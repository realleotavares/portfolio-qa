# Test Cases & Acceptance Criteria Traceability

[Casos de Teste & Critérios de Aceite](#português) | [Test Cases & Acceptance Criteria Traceability](#english) | [Casos de Prueba y Criterios de Aceptación](#español)

---

<a id="português"></a>
## Português

Esta matriz conecta os requisitos de negócios fictícios (Critérios de Aceite) aos cenários de teste automatizados implementados nos frameworks. Isso garante que cada linha de automação entregue valor real de negócio.

### 1. SauceDemo (E-commerce UI)

| Funcionalidade | Critério de Aceite (CA) | Cenário de Teste / Tipo de Asserção | Framework |
|----------------|-------------------------|-------------------------------------|-----------|
| **Login** | Como Usuário Padrão, devo ser capaz de fazer login com credenciais válidas. | `should complete a purchase successfully` | Playwright / Robot |
| **Login** | Usuários bloqueados devem ver uma mensagem de erro e não podem acessar o inventário. | `should fail to login with locked out user` | Playwright |
| **Carrinho** | Ao adicionar um item ao carrinho, o ícone deve incrementar para refletir a quantidade. | `Verify Cart Badge Count` | Playwright / Robot |
| **Checkout** | O preço total do checkout deve ser a soma exata de Preço do Item + Taxas. | **Asserção Matemática Profunda** | Playwright |
| **DOM** | O DOM do carrinho deve conter os atributos corretos de preço e quantidade para o backend. | **Asserção Profunda no DOM** | Robot |

### 2. Restful Booker (API Backend)

| Funcionalidade | Critério de Aceite (CA) | Cenário de Teste / Tipo de Asserção | Framework |
|----------------|-------------------------|-------------------------------------|-----------|
| **Criar** | Uma nova reserva deve ser aceita se o JSON seguir estritamente o schema do sistema. | `test_create_booking_schema_validation` | Pytest |
| **Criar** | O sistema deve persistir a reserva recém-criada no banco de dados. | **Asserção Profunda (Verificação GET)** | Pytest |
| **Atualizar** | Modificar uma reserva requer um Token de Autorização ativo. | `test_update_booking_requires_auth` | Pytest |
| **Deletar** | Excluir uma reserva deve remover completamente o recurso, resultando em 404 posteriormente. | `test_delete_booking` | Pytest |

---

<a id="english"></a>
## English

This matrix connects the fictional business requirements (Acceptance Criteria) to the automated test scenarios implemented across the frameworks. This ensures that every line of automation delivers actual business value.

### 1. SauceDemo (E-commerce UI)

| Feature | Acceptance Criteria (AC) | Test Scenario / Assertion Type | Framework |
|---------|--------------------------|--------------------------------|-----------|
| **Login** | As a Standard User, I must be able to log in with valid credentials. | `should complete a purchase successfully` | Playwright / Robot |
| **Login** | Users with blocked accounts must see an error message and cannot access inventory. | `should fail to login with locked out user` | Playwright |
| **Cart** | When adding an item to the cart, the shopping badge must increment to reflect quantity. | `Verify Cart Badge Count` | Playwright / Robot |
| **Checkout** | The total checkout price must be the exact mathematical sum of Item Price + Tax. | **Deep Math Assertion** | Playwright |
| **Cart DOM** | The cart DOM must physically hold the correct price and quantity attributes for backend. | **Deep DOM Assertion** | Robot |

### 2. Restful Booker (API Backend)

| Feature | Acceptance Criteria (AC) | Test Scenario / Assertion Type | Framework |
|---------|--------------------------|--------------------------------|-----------|
| **Create** | A new booking must be accepted if the JSON payload strictly follows the schema. | `test_create_booking_schema_validation` | Pytest |
| **Create** | The system must persist the newly created booking in the database. | **Deep Assertion (GET Verification)** | Pytest |
| **Update** | Modifying a booking requires an active Authorization Token. | `test_update_booking_requires_auth` | Pytest |
| **Delete** | Deleting a booking must completely remove the resource, resulting in a 404 later. | `test_delete_booking` | Pytest |

---

<a id="español"></a>
## Español

Esta matriz conecta los requisitos comerciales ficticios (Criterios de Aceptación) con los escenarios de prueba automatizados implementados en los frameworks. Esto asegura que cada línea de automatización entregue un valor comercial real.

### 1. SauceDemo (E-commerce UI)

| Característica | Criterio de Aceptación (CA) | Escenario de Prueba / Tipo de Aserción | Framework |
|----------------|-----------------------------|----------------------------------------|-----------|
| **Login** | Como Usuario Estándar, debo poder iniciar sesión con credenciales válidas. | `should complete a purchase successfully` | Playwright / Robot |
| **Login** | Los usuarios bloqueados deben ver un mensaje de error y no pueden acceder al inventario. | `should fail to login with locked out user` | Playwright |
| **Carrito** | Al agregar un artículo al carrito, el ícono debe incrementar para reflejar la cantidad. | `Verify Cart Badge Count` | Playwright / Robot |
| **Checkout** | El precio total del pago debe ser la suma matemática exacta de Precio del Artículo + Impuestos. | **Aserción Matemática Profunda** | Playwright |
| **DOM** | El DOM del carrito debe contener los atributos correctos de precio y cantidad para el backend. | **Aserción Profunda del DOM** | Robot |

### 2. Restful Booker (API Backend)

| Característica | Criterio de Aceptación (CA) | Escenario de Prueba / Tipo de Aserción | Framework |
|----------------|-----------------------------|----------------------------------------|-----------|
| **Crear** | Se debe aceptar una nueva reserva si el JSON sigue estrictamente el esquema del sistema. | `test_create_booking_schema_validation` | Pytest |
| **Crear** | El sistema debe persistir la reserva recién creada en la base de datos. | **Aserción Profunda (Verificación GET)** | Pytest |
| **Actualizar** | Modificar una reserva requiere un Token de Autorización activo. | `test_update_booking_requires_auth` | Pytest |
| **Eliminar** | Eliminar una reserva debe remover completamente el recurso, resultando en un 404 después. | `test_delete_booking` | Pytest |
