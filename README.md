Requisitos
- Java 11
- Gherkin
- Cucumber
- Karate
- IDE compatible con Java, como IntelliJ IDEA
- Las dependencias del proyecto se pueden instalar con el comando mvn clean install.

Instrucciones de instalación
- Clona el proyecto desde GitHub.
    url: https://github.com/albertobali/Ejercicio2QA.git
- Ejecuta el comando mvn clean install para instalar las dependencias.

Instrucciones de ejecución
- Abre el proyecto en tu IDE.
- Ejecuta las pruebas con los siguientes comando:
    * mvn clean test -Dtest=runner -Dkarate.options="--tags @añadirMascota"
    * mvn clean test -Dtest=runner -Dkarate.options="--tags @consultarMascotaPorID"
    * mvn clean test -Dtest=runner -Dkarate.options="--tags @actualizarMascota"
    * mvn clean test -Dtest=runner -Dkarate.options="--tags @buscarMascotaPorStatus"
- El reporte se encuentra en la siguiente ruta:
    * /target/karate-reports/karate-summary.html
