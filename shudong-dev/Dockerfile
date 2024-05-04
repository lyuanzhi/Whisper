FROM maven:3.8.3-openjdk-8 AS builder
RUN USER=root mkdir shudongBack
WORKDIR /shudongBack
COPY . .
RUN mvn clean package
RUN ls ./demo-controller
RUN ls ./demo-controller/target
# Final stage
FROM openjdk:8-jdk-slim
COPY --from=builder /shudongBack/demo-controller/target/shudong.war .
CMD ["java", "-jar", "shudong.war"]