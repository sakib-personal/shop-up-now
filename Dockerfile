FROM amazoncorretto:17.0.11@sha256:ffb6aebcaa434785a2ad0797ea8f38b33237abcd013f7613f8f6ac748e48ab02

COPY ./target/shop-up-now*.jar /app/shop_up_now.jar

WORKDIR /app

EXPOSE 8080

CMD java -jar shop_up_now.jar