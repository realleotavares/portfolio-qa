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
