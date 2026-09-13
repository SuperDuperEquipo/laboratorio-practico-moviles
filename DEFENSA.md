# Defensa técnica escrita

## Pregunta 1 - Estado y ubicación
### ¿Dónde vive el estado de su pantalla y por qué ahí?

## Pregunta 2 - Reconstrucción de widgets
### ¿Qué se reconstruye cuando el usuario cambia un solo registro, y qué hizo, si hizo algo, para que no se reconstruya de más?

## Pregunta 3 - Extracción de componente
### ¿Qué componente extrajo, con qué criterio, y qué habría pasado si hubiera usado un método en lugar de una clase?

El componente extraído fue `StudentTile`, este widget representa a un estudiante individual dentro de la lista de asistencia. El criterio tomando fue que dicho elemento se repite 12 veces en pantalla con la misma estructura (nombre, carné, estado y control de asistencia) pero con  datos distintos, lo cual lo hace apto para convertirse en una clase reutilizable en vez de dejarlo inline en el `build()` de la pantalla. 

De igual manera, los datos entran solo por el constructor (`name`, `studentId`, `isPresent`, `onChanged`). Además, es un `StatelessWidget`, lo cual significa que no guarda ni modifica su propio estado. Cuando se cambia por medio del switch, solo invoca el callback `onChanged`, y es el `StatefulWidget` padre quien actualiza el estado mediante `setState`.

Si en su lugar se hubiera usado un método, el widget no sería independiente, puesto que seguiría atado a la clase que lo contiene y no se podría reutilizar sin copiar el método completo. Al ser una clase, `StudentTile` puede probarse y reutilizarse de forma independiente. 

## Consultas realizadas a la IA 
Para esta actividad las consultas realizadas fueron,
- Mejoras en la redacción de textos 
- Correción de errores como: Error `FormatException: Unexpected end of input` al ejecutar `flutter analyze` 