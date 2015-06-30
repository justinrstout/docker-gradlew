FROM justinrstout/oracle-jdk

WORKDIR /tmp/gradle

COPY gradle ./gradle
COPY gradlew ./

RUN chmod 777 gradlew

RUN ./gradlew

RUN rm -rf /tmp/gradle
