# Examen Final Ruby on Rails

¡Felicitaciones por haber llegado hasta este punto! Estamos encantados de que estés preparado para presentar esta prueba. En ella, evaluaremos todas las habilidades que has adquirido durante el Bootcamp. El objetivo es abordar una problemática real y brindar una solución centrada en la estructura de un proyecto. Te presentaremos una temática específica con requisitos a desarrollar.

La empresa JetMaintain se dedica al mantenimiento de motores de avión. La información se registra y guarda en papel, lo que ha provocado una gestión caótica de los mantenimientos de motores, tanto para la empresa como para sus clientes. Esto ha resultado en pérdida de tiempo, bajo control de insumos y pérdida del seguimiento de las actividades.

Para mitigar esta problemática, el equipo administrativo ha tomado la decisión de desarrollar una plataforma que permita gestionar todos los mantenimientos preventivos y correctivos de los motores de sus clientes. Confían en tus habilidades como desarrollador para llevar a cabo esta tarea.

## REQUISITOS

1. El desarrollo debe hacer uso del patrón de arquitectura de Software MVC (Modelo Vista Controlador).
  
2. Genera un modelo conceptual, lógico o físico para identificar las entidades y atributos del proyecto.
   
3. El sitio web debe ser responsive, por lo que es necesario que se adapte a múltiples dispositivos. Puedes utilizar Bootstrap o sus plantillas derivadas para lograr esto

4. Se necesitan tres Vistas estáticas:

* Una vista de Inicio donde los usuarios llegarán cuando ingresen al sitio web sin estar autenticados.
* Una vista de Términos y Condiciones donde se establecerán los aspectos legales del servicio.

5. Para poder acceder a crear, ver, editar, eliminar Motores se debe crear un sistema de autenticación o de registro de Usuarios. Estos accederán por medio de enlaces de registro o inicio de sesión los cuales deben estar disponibles desde la barra de navegación y/o desde la vista de inicio para que los usuarios puedan acceder a ellos.

* Al registrarse, se le solicitará al usuario su email y contraseña. Estos datos también serán requeridos al iniciar sesión.

i. Se deben hacer validaciones en el frontend y backend antes de poder registrarse o iniciar sesión.

6. Deben existir 2 roles de usuarios:
* Operador: Este será el usuario por defecto podrá generar mantenimientos en los Motores, pero no podrá eliminarlos.
* Administrador: Este usuario puede crear, editar o eliminar recursos como Motores o Mantenimientos.

7. Los Motores que recibirán mantenimiento deben tener la siguiente información:

* Tipo de equipo: Se debe elegir uno de los siguientes mediante una relación:
  
i. Motor a reacción.

ii. Motor turbohélice.

* Nombre: Debe ser único y seguir la siguiente estructura:
  
i. REAC-n, donde "n" es un número de 1 a infinito.

ii. TURBO-n, donde "n" es un número de 1 a infinito.

* Descripción
* Foto del Motor, en caso del usuario no anexar una foto, mostrar una imagen por defecto.
* Todos los atributos deben estar validados para poder guardar la información.
* Se deben ingresar por lo menos 20 equipos por medio del ‘seed.rb’.
* Recuerda usar paginación.

8. Cuando se realiza un mantenimiento en un motor, se deben registrar los siguientes datos:

* Tipo de motor.
* Tipo de mantenimiento: Se debe elegir uno de los siguientes mediante una relación:

i. Preventivo.
ii. Correctivo.

* Nombre del motor.
* Ciudad: Se debe elegir una ciudad mediante una relación. Estas ciudades deberán cargarse a través de un archivo ‘seed.rb’. Algunas opciones podrían ser:

i. Santiago de Chile.

ii. Temuco.

iii. Antofagasta.

* Materiales utilizados: Se podrán asignar uno o varios materiales de la siguiente lista, los cuales deberán cargarse mediante un archivo ‘seed.rb’:

i. Turbinas.

ii. Sistemas de ignición.

iii. Sistemas de combustible.

* Fecha en la que se realizó el mantenimiento
* Email del técnico que realizó el mantenimiento.
* Fecha del mantenimiento.

9. Los mantenimientos de motores deben poder visualizarse desde su vista de índice con la siguiente información:

* Tipo de motor.
* Tipo de mantenimiento.
* Nombre del motor.
* Foto.
* Se deben ingresar por lo menos 100 mantenimientos de motor en el registro mantenimientos.

10. Los mantenimientos de motor deben poder visualizarse desde su vista detallada (show) con toda la información solicitada en el puntoa 6.

11. Elabora un archivo README.md con la descripción del proyecto y como implementarlo por lo menos en un ambiente de desarrollo.
NOTAS:

Estos son algunos puntos que pueden servirte al momento de realizar el desarrollo.

* Recuerda que para un desarrollo idóneo todos los campos deberían estar validados.
* Analiza las entidades y atributos involucrados para establecer campos que tengan validación de tipo único.
* Para el sistema de Autenticación o Control de Acceso puedes hacer uso de la gema Devise.
* La paginación es posible realizarla de forma manual o con la gema Pagy, esta gema puede usar estilos de Bootstrap.
* Recuerda que para agregar adjuntos como imágenes puedes usar local Storage.
* Puedes usar el archivo seed.rb en conjunto con la gema Faker para agregar datos de prueba en tu proyecto.
* Puedes apoyarte con el uso de plantillas para agilizar el frontend de tu proyecto.
