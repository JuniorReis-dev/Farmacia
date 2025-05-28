# Etapa de construção
FROM eclipse-temurin:21-jdk AS build

WORKDIR /workspace/app
COPY mvnw ./
COPY .mvn .mvn/
COPY pom.xml ./
COPY src src/

# Corrigir permissão do Maven Wrapper
RUN chmod +x ./mvnw

# Gerar JAR
RUN ./mvnw package -DskipTests

# Etapa de execução
FROM eclipse-temurin:21-jdk

# Adicionar variável para resolver problemas de permissão (se necessário)
# ENV RAILWAY_RUN_UID=0 # Para Railway, pode não ser necessário no Render

# Copiar o JAR diretamente (sem extrair)
COPY --from=build /workspace/app/target/*.jar app.jar

# Expor a porta que a aplicação usa
EXPOSE 8080

# Executar a aplicação
ENTRYPOINT ["java", "-jar", "/app.jar"]
