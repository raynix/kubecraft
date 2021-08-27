FROM openjdk:16.0.2

WORKDIR /minecraft

RUN curl -O https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar

ADD config/* ./
RUN chown -R nobody /minecraft

USER nobody
CMD ["java", "-jar", "server.jar", "nogui"]
