# language: es
Característica: Reserva de Habitaciones
  Como un huésped del hotel Restful-Booker
  Quiero poder seleccionar fechas y reservar una habitación
  Para garantizar mi estancia durante un viaje

  Antecedentes:
    Dado que estoy en la página de inicio de Restful-Booker
    Y el panel de reserva de la habitación "Single" está visible

  @positive @reservation
  Escenario: Reservar una habitación en fechas disponibles
    Cuando selecciono la fecha de inicio para el día "15" del próximo mes
    Y selecciono la fecha de fin para el día "20" del próximo mes
    Y hago clic en el botón "Book this room"
    Y lleno mis datos personales (Nombre, Apellido, Email, Teléfono)
    Y confirmo la reserva
    Entonces el sistema debe procesar la reserva con éxito
    Y debo visualizar el mensaje "Booking Successful!" con el resumen de las fechas

  @negative @reservation
  Escenario: Intentar reservar una habitación sin informar el primer nombre
    Cuando selecciono fechas válidas en el calendario
    Y hago clic en el botón "Book this room"
    Y lleno mis datos personales, dejando el campo "Firstname" vacío
    Y confirmo la reserva
    Entonces la reserva no debe ser creada
    Y el sistema debe mostrar el error de validación "Firstname should not be blank" en el formulario
