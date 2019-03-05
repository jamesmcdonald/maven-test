FROM maven AS builder

COPY src pom.xml /build/
WORKDIR /build
RUN mvn clean package

FROM openjdk:11

COPY --from=builder /build/target/*.jar /
