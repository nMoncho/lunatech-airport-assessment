FROM openjdk:8u181-jre-slim

ARG JAR_FILE
ARG SERVICE_NAME

RUN echo "/usr/bin/java -jar /usr/share/${SERVICE_NAME}/${JAR_FILE}" > /usr/local/exec_jar.sh
ENTRYPOINT ["/bin/sh", "/usr/local/exec_jar.sh"]

# Add the service itself
COPY target/${JAR_FILE} /usr/share/${SERVICE_NAME}/${JAR_FILE}

EXPOSE 8080
