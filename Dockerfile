FROM openjdk:11 as builder

COPY . /build/
WORKDIR /build
RUN ./gradlew build

FROM openjdk:11

COPY --from=builder /build/build/libs/maven-test.jar /
CMD java -jar /maven-test.jar
