solucion cuadro de preguntas 1
1. Vertex Shader (Procesamiento de vértices): Su objetivo es transformar las coordenadas espaciales de cada punto (vértice) y prepararlos para el espacio de la pantalla

Rasterización: Su objetivo es tomar las figuras geométricas vectoriales (como los triángulos) y convertirlas en un conjunto de fragmentos que corresponden a los píxeles de la pantalla

Fragment Shader (Procesamiento de fragmentos): Su objetivo es calcular y asignar el color final a cada píxel que va a aparecer en el monitor
2. significa que las etapas por donde pasan los datos gráficos ya no son rígidas ni automáticas, sino que tú puedes escribir código (shaders) para controlarlas, a diferencia el pipeline fijo usaba funciones predefinidas por el sistema con muy poco margen de cambio, el programable permite diseñar con total libertad cómo la tarjeta gráfica procesa la geometría y los colores dandonos como ventaja control absoluto sobre el rendimiento, efectos visuales avanzados y adaptación directa al hardware de la GPU teniendo que programaar los shaders
3. es el paso de vertices a pixeles
4. son todos los datos necesarios que se generan en la rasterización para calcular el color y la posición de un posible píxel en pantalla y no es lo mismo a un pixel ya que este es el paso antes entre vector y pixel
5. resuelve el problema de saber qué objeto está más cerca de la cámara y cuál está oculto detrás y el depth test es el espacio donde OpenGL compara la profundidad del nuevo fragmento con la que ya estaba guardada en el z-buffer, si el nuevo objeto está más cerca, se dibuja y actualiza el bufer
6. se presenta gracias a los pixeles, al ser cuadrados forma un tipo de sierra si el vector se encuentra de forma diagonal y el anti-aliasing es para suavizar estos bordes y hacer que las lineas se vean continuas
7. la iluminación se calcula por lo general dentro del fragment shader alterando el color final según la posición de la luz y las normales del objeto aunque no es necesario en todos los casos ya que se puede hacer un fragment sin necesidad de utilizar luz, solo que esta es necesaria para que no se vean planos los objetos
8. implica un aumento drástico en la carga de procesamiento ya que por cada fuente de luz adicional, el fragment shader tiene que repetir los cálculos matemáticos de luz y sombra para cada píxel, lo que consume más recursos de la tarjeta gráfica

solucion cuadro de preguntas 2

1. Para dibujar un triángulo en OpenGL necesitamos preparar tanto los datos matematicos como el entorno de la GPU siguiendo estos pasos:

Definir los datos de los vértices: Crear las coordenadas que definen los tres vertices del triángulo

Almacenarlos en un VBO: Enviar esos datos crudos a la memoria de la tarjeta gráfica para que estén disponibles

Configurarlos con un VAO: Crear y activar un VAO y usar funciones como glVertexAttribPointer para indicarle a la GPU cómo debe leer e interpretar la estructura de esos datos (posición, color, tamaño, etc)

Compilar y activar los Shaders: Tener listo y vinculado un programa de shaders que procese la posición y el color de los píxeles.

Llamado de dibujo: En el bucle principal, activar el VAO, usar el programa de shaders y ejecutar la instrucción de renderizado para que aparezca en pantalla.

2. Para poder utilizar un shader en una aplicación de OpenGL, se requiere el siguiente proceso:

Escribir el código: Redactar tanto el Vertex Shader, como el Fragment Shader utilizando el lenguaje de OpenGL

Compilar el código fuente: Crear objetos de shader en OpenGL para cada archivo, cargarles el código fuente y compilarlos individualmente para verificar que no tengan errores de sintaxis

Crear y enlazar el Shader Program: Unir ambos shaders compilados dentro de un objeto llamado shader program

Activar el programa antes de dibujar: Llamar a la función glUseProgram() justo antes de realizar la llamada de dibujo en cada fotograma para asegurarte de que la GPU esté usando ese conjunto específico de shaders en ese momento