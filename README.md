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
    * mvn test -Dkarate.options="--tags @añadirMascota"
    * mvn test -Dkarate.options="--tags @consultarMascotaPorID"
    * mvn test -Dkarate.options="--tags @actualizarMascota"
    * mvn test -Dkarate.options="--tags @buscarMascotaPorStatus"
