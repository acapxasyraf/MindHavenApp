Linux / MacOS
1. run 'mvn install package'
2. run 'mvn clean package'
3. load target/MindHavenApp.war to tomcat webapp folder / 'mvn spring-boot:run' for dev purpose


Windows 
1.run as normal procedure.



step to run :

1. mvn install package
2. mvn clean package
3. docker build -t mindhaven-app .   
4. docker run -d -p 8080:8080 --name mindhaven-app-container mindhaven-app