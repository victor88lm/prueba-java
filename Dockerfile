# Usa una imagen base de Tomcat que ya incluye un servidor Tomcat
FROM tomcat:9-jdk11-openjdk-slim

# Copia el archivo WAR en el contenedor
COPY Java_Project.war /usr/local/tomcat/webapps/

# Exponer el puerto 8080
EXPOSE 8080

# Comando para iniciar Tomcat
CMD ["catalina.sh", "run"]
