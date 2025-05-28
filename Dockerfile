# Etapa de construção
FROM eclipse-temurin:21-jdk AS build

WORKDIR /workspace/app
COPY mvnw ./
COPY .mvn .mvn/
COPY pom.xml ./
COPY src src/

RUN chmod +x ./mvnw
RUN ./mvnw package -DskipTests

# Confirma se o JAR foi gerado antes de tentar extraí-lo
RUN mkdir -p target/dependency && \
    ls -l target/*.jar && \
    (cd target/dependency; jar -xf ../target/*.jar)

# Etapa de execução
FROM eclipse-temurin:21-jdk
ARG DEPENDENCY=/workspace/app/target/dependency

COPY --from=build ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY --from=build ${DEPENDENCY}/META-INF /app/META-INF
COPY --from=build ${DEPENDENCY}/BOOT-INF/classes /app

ENTRYPOINT ["java", "-cp", "app:app/lib/*", "com.generation.farmacia.FarmaciaApplication"]
