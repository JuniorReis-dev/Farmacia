# Etapa de construção
FROM eclipse-temurin:21-jdk AS build

WORKDIR /workspace/app
COPY mvnw ./
COPY .mvn .mvn/
COPY pom.xml ./
COPY src src/

# Corrigir permissão do Maven Wrapper
RUN chmod +x ./mvnw

# Gerar JAR corretamente antes de tentar extrair
RUN ./mvnw package -DskipTests

# Confirma se o JAR foi gerado antes de tentar extrair
RUN mkdir -p target/dependency && \
    if [ -f target/*.jar ]; then \
        cd target/dependency && jar -xf ../target/*.jar; \
    else \
        echo "ERRO: Nenhum JAR encontrado na pasta target/!"; \
        exit 1; \
    fi

# Etapa de execução
FROM eclipse-temurin:21-jdk
ARG DEPENDENCY=/workspace/app/target/dependency

COPY --from=build ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY --from=build ${DEPENDENCY}/META-INF /app/META-INF
COPY --from=build ${DEPENDENCY}/BOOT-INF/classes /app

ENTRYPOINT ["java", "-cp", "app:app/lib/*", "com.generation.farmacia.FarmaciaApplication"]
