FROM justinrstout/oracle-jdk

WOKRDIR /tmp/gradle

COPY gradle ./gradle
COPY gradlew ./
RUN ./gradlew

RUN rm -rf /tmp/gradle
