### Reflexión final para esta actividad:

(& = significa direccion de memoria)

Revisa de nuevo el programa anterior y construye tu propio mapa de memoria indicando en qué parte del mapa se ubican las variables y constantes globales, locales, estáticas y de la memoria dinámica y en qué parte del mapa se encuentran las funciones y el mensaje de solo lectura.

R=// Variables Globales: "int global_inicializada = 42" "int global_no_inicializada;" "const char* const mensaje_ro = "Hola, memoria de solo lectura";" " "

Experimento 1: modificar el segmento de texto

Experimento 2: modificar el segmento de datos (constante global)

¿Que ocurre? = Lo que ocurre es que el programa trata de cambiar el valor de la primera direccion de memoria de la variable que en este caso es una H por un cero.

¿Por que? = Por que el tipo de variable es una constante la cual no se puede cambiar y da error

Experimento 3: modificar el segmento de datos (variables globales)

¿Que ocurre? = El programa declara varias variables globales las cuales no se inicializan

¿Por que? = Una varable que no es inicializada toma cualquier valor y puede dañar el progrma

Experimento 4: modificar la variable local estática de una función por fuera de ella

¿Que ocurre? = En el metodo main se tratab de llamar a la variable var_estatic pero da error en tiempo de compilacion

¿Por que? = Por que en el contexto de main no existe esta variable  

