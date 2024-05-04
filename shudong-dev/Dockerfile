FROM maven:3.8.3-openjdk-8 AS builder
RUN USER=root mkdir shudongBack
WORKDIR /shudongBack
COPY . .
RUN mvn clean package
# Final stage
FROM adoptopenjdk/openjdk8:jre-8.0.302_8-alpine
COPY --from=builder /shudongBack/demo-controller/target/shudong.war .
CMD ["java", "-jar", "shudong.war"]