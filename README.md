# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

-   Ruby version

-   System dependencies

-   Configuration

-   Database creation

-   Database initialization

-   How to run the test suite

-   Services (job queues, cache servers, search engines, etc.)

-   Deployment instructions

-   ...

1. Servidor hecho con rails para trabajar la parte de los modelos y el controlador. Este debe estar corriendo en el puerto 3000 para que pueda servir al app.

2. Para correr el proyecto usé la versión 6.1.4.4 de rails y la 3.0.3p157 de ruby.

3. Hy que hacer bundle install para descargar las gemas del Gemfile y luego rails para que se ejcute el servidor

4. Los modelos que hay son:

-- Application_Record para el tema de la autenticación.
-- Contract para el CRUD de los contatos.
-- Day para los días de la semana
-- Shedule para el manejo e las horas.
-- Role para la asignación a los usuarios.
-- Service para el CRUD de los servicios.
-- User paraa el CRUD de los usuarios.
-- Shift para el manejo de los turnos.

5. Respecto a los controles, en su mayoría se utilizaron para cubrir el CRUD básico y alinear la información con las vistas del frontend.

6. Cree un modelo de datos que fui modificando.

7 Se uso como base de datos SQLite por temas prácticos del proyecto.
