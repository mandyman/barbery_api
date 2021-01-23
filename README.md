# barbery_api
En una barbería se quiere crear un sistema de reservación para que los clientes puedan reservar su turno para el dia y hora que quieren arreglarse el pelo. El sistema es muy básico, el usuario selecciona el dia y la hora, y el sistema crea la reservación, solo se permiten 3 reservaciones diarias.
El usuario puede ver las reservaciones creadas y poder modificarlas, o eliminarlas.

La solución consiste en crear un API Rest en Ruby on Rails con los endpoints necesarios para dar respuesta a las funcionalidades descritas; imagina que ese API será usado en el futuro desde una aplicación movil.

La aplicacion sirve por el puerto default de rails por el endpoint appointments (http://localhost:3000/appointments).

## How to init
Primero instalar dependencias, despues inicializar la base de datos y después opcionalmente usar un seed para probar. Los comandos son los siguientes:
```
1. $ bundle install
2. $ rails db:migrate
3. $ rails db:seed
```

## How to start
```
$ rails s
```
