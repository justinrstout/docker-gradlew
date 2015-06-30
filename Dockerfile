FROM justinrstout/oracle-jdk

WORKDIR /tmp/gradle

COPY gradle ./gradle
COPY gradlew ./
RUN ./gradlew

RUN rm -rf /tmp/gradle
