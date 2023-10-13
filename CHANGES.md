# Cambios realizados

- Se agregaron instrucciones de instalación/ejecución en el readme

- Limpieza del repositorio:
    - Se eliminó el cache de ejecuciones anteriores
    - Se agregó un .gitignore para evitar que se suban archivos muy pesados al repositorio (pesos del modelo, cache, entre otros)

- Cambios al archivo track.py:
    - Se agregaron líneas de código (líneas 215-219) para que el output se guarde en un archivo de texto (csv) siguiendo un formato más interpretable
        - El formato del output es el siguiente:
            `indice, número del frame, etiqueta, número del elemento según etiqueta, bbox_left, bbox_top, bbox_width, bbox_height`

            - número del frame: identificador para saber que frame de la fuente (video, cámara, imágen) se procesó.
            - etiqueta: categoría inferida por el programa (i.e. camión, bus, bicicleta, etc). De momento la etiqueta incluye el "número del elemento", la "categoría" o "clase", y la probabilidad inferida por el modelo.
            - número del elemento: identificador único que se le asigna a cada elemento detectado. El primer auto tendrá el número uno, el segundo el número dos, luego la primera bicicleta tendrá el número tres, y así, la idea es evitar contar dos veces el mismo elemento detectado, si se vuelve a encontrar un elemento que el modelo ya vió le asignará el mismo número que le asignó inicialmente y no lo considerará para el conteo. El mayor "número del elemento" dentro del archivo de salida indicará la cantidad de vehículos/elementos únicos contados.
            - bbox_left, bbox_top: coordenadas en pixeles para el punto superior izquierdo del cuadro que encierra la clase detectada.
            - bbox_width, bbox_height: ancho y alto en pixeles del cuadro que encierra la clase detectada.

---

# Pendiente:
- Revisar contador, eliminar clases
- Formato:
    - Ver el tema de las lineas horizontales de conteo
    - Dejar las etiquetas en español
    - Definir formato de entrega
    - Posibilidad de usar camara externa (usb u otros)

- Funcionalidad:
    - Revisar con videos que apunten a la calle en distintos ángulos

- Deploy:
    - Configurar repositorio para ser lanzado en múltiples fpga/sistemas
        - Beaglebone ai 64
        - Xilinix kria kv 260
        - Jetson nano

- Trabajo futuro:
    - Considerar alternativas para la detección de vehículos (Yolov8, segment-everything (facebook), otros)
