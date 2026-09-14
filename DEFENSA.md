# Defensa técnica escrita

## Pregunta 1 - Estado y ubicación

### ¿Dónde vive el estado de su pantalla y por qué ahí?

El estado real de la pantalla vive en la lista de estudiantes que guarda el `StatefulWidget` principal, creada a partir de `buildInitialStudents()`. Cada `Student` de esa lista tiene un campo `isPresent`, que es lo único que cambia mientras la aplicación está en uso. El campo `initialPresent` no se toca nunca después de crear el estudiante y sirve como referencia para poder restablecer sin asumir que todos empezaron ausentes. La lista completa la posee el `State` de la pantalla y cualquier cambio pasa por `setState()`.

Se eligió esta ubicación, porque tres partes distintas de la interfaz necesitan la misma información al mismo tiempo: el encabezado necesita contar cuántos están presentes, la lista necesita mostrar el estado de cada uno y los botones globales necesitan modificar a los doce a la vez. Si cada tarjeta de estudiante guardara su propio estado por separado, ninguna de esas tres partes tendría forma de leerlo ni de cambiarlo desde fuera.

## Pregunta 2 - Reconstrucción de widgets

### ¿Qué se reconstruye cuando el usuario cambia un solo registro, y qué hizo, si hizo algo, para que no se reconstruya de más?

## Pregunta 3 - Extracción de componente

### ¿Qué componente extrajo, con qué criterio, y qué habría pasado si hubiera usado un método en lugar de una clase?

El componente extraído fue `StudentTile`, este widget representa a un estudiante individual dentro de la lista de asistencia. El criterio tomando fue que dicho elemento se repite 12 veces en pantalla con la misma estructura (nombre, carné, estado y control de asistencia) pero con datos distintos, lo cual lo hace apto para convertirse en una clase reutilizable en vez de dejarlo inline en el `build()` de la pantalla.

De igual manera, los datos entran solo por el constructor (`name`, `studentId`, `isPresent`, `onChanged`). Además, es un `StatelessWidget`, lo cual significa que no guarda ni modifica su propio estado. Cuando se cambia por medio del switch, solo invoca el callback `onChanged`, y es el `StatefulWidget` padre quien actualiza el estado mediante `setState`.

Si en su lugar se hubiera usado un método, el widget no sería independiente, puesto que seguiría atado a la clase que lo contiene y no se podría reutilizar sin copiar el método completo. Al ser una clase, `StudentTile` puede probarse y reutilizarse de forma independiente.

## Consultas realizadas a la IA

Para esta actividad las consultas realizadas fueron:

- Mejoras en la redacción de textos
- Corrección de errores como: Error `FormatException: Unexpected end of input` al ejecutar `flutter analyze`
- Consulta sobre la diferencia de usar una función suelta o una extension para aplicar las acciones grupales a la lista de estudiantes
- Aceleración de la construcción del renderizado dinámico (ListView.builder) para la vista principal.
- Refactorización asistida del test por defecto de Flutter para alinearlo con el flujo de datos actual.
- Consulta sobre incompatibilidad de versiones de SDK en pubspec.yaml.
