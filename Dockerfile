FROM justinrstout/oracle-jdk

MAINTAINER Justin R. Stout <justinrstout@justinrstout.com>

WORKDIR /tmp/gradle

COPY gradle ./gradle
COPY gradlew ./

RUN chmod 777 gradlew

RUN ./gradlew

RUN rm -rf /tmp/gradle
