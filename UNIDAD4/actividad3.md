lo que ocurre es que el triangulo se vuelve mucho mas pequeño y se corre hacia la izquierda

hasta el momento he aprendido principalmente como funcionan las variables del triangulo, como cada cosa lo afecta como un objetosin deformar la figura

preguntas de reflexion:
1. Es la estructura de datos interna que almacena todo el estado gráfico actual
2. Su rol es crear ventanas, gestionar contextos y manejar los componentes externos (mouse y teclado), Su gran ventaja es que es multiplataforma, ahorrando escribir código específico para cada sistema operativo
3. Porque necesita un entorno de trabajo delimitado donde se registren los recursos activos, ya que OpenGL no actúa por si solo
4. Es la memoria de vídeo (RAM de la GPU) donde se dibuja la imagen píxel a píxel antes de mostrarla en el monitor
5. El viewport define qué sección específica del framebuffer se utilizará para mapear y mostrar el área visible de la imagen
6. La GPU es el hardware que ejecuta los cálculos en paralelo y dibuja, mientras que los drivers implementan y conectan las funciones de la API con ese hardware
7. Sincroniza los fotogramas con la tasa del monitor, Si la imagen es estática no pasa casi nada, si es dinámica y no se activa, se producen cortes visuales molestos
8. Legacy usaba un pipeline fijo con funciones predefinidas dejando poco control
El moderno usa un pipeline programable basado en Shaders, dando control absoluto a la GPU
9. Es un programa que corre la GPU y Es vital porque sin shaders la GPU no sabe cómo procesar vértices ni pintar píxeles
10. el setuptriangle() Configura la geometría
el VBO guarda los datos de los vértices en la GPU
el VAO almacena y recuerda la configuración de cómo deben leerse esos datos
11. Si solo hay un objeto estático, no es necesario, solo cuando hay multiples objetos
12. Intercambia el búfer oculto con el búfer visible en pantalla haciendo un doble buffering Si no se llama, la pantalla se queda en blanco o congelada y no muestra la animación
