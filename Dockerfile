FROM schoolofdevops/carts-maven

WORKDIR /opt/carts

COPY . .

RUN mvn package \
<<<<<<< HEAD
    && mv target/carts.jar /run \
    && rm -rf *

EXPOSE 80

CMD java -jar /run/carts.jar --port=80
=======
    && mv target/carts.jar /run/carts.jar \
    && rm -rf /opt/carts/*

WORKDIR /run

EXPOSE 80

CMD java -jar carts.jar --port=80

>>>>>>> 2f6f1efb44a034cc45383537ffe20eb999036cb7
