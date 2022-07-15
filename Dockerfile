FROM openjdk:16-alpine3.13

WORKDIR /app



COPY .mvn/ .mvn
RUN ls -al /app/.mvn/

COPY mvnw pom.xml ./
RUN  ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]


