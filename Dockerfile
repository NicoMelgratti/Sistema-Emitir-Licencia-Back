# ----- etapa 1: build -----
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /build

# Copiamos pom.xml primero para aprovechar la caché
COPY pom.xml .
RUN mvn -B dependency:go-offline

# Ahora el resto del código
COPY src src
# empaquetamos sin tests
RUN mvn -B clean package -DskipTests

# ----- etapa 2: runtime -----
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY --from=build /build/target/app-licencia-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]