# Base Alpine Linux based image with OpenJDK JRE only
FROM openjdk:8-jre-alpine
SHELL ["/bin/sh", "-c"]
RUN apk add --no-cache bash
RUN apk add --no-cache git
RUN git clone https://github.com/transpect/docx2hub-frontend --recursive /opt/docx2hub
RUN chmod +x /opt/docx2hub/docx2hub.sh
RUN chmod g+rx,o+rx /
CMD ["bash"]