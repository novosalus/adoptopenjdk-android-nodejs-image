FROM novosalus/adoptopenjdk-android:latest

ARG BUILD_DATE
ARG BUILD_VERSION
ARG VCS_REF

LABEL maintainer="Ritesh Chaudhari <ritesh@novosalus.com>" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.version=$BUILD_VERSION \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vcs-url="https://github.com/novosalus/adoptopenjdk-android-nodejs-image.git" \
      org.label-schema.name="novosalus/adoptopenjdk-android-nodejs-image" \
      org.label-schema.vendor="Ritesh Chaudhari (Novosalus)" \
      org.label-schema.description="AdoptOpenJDK android docker image" \
      org.label-schema.url="https://novosalus.com/" \
      org.label-schema.license="" \
      org.opencontainers.image.title="novosalus/adoptopenjdk-android-image" \
      org.opencontainers.image.description="AdoptOpenJDK android, nodejs docker image" \
      org.opencontainers.image.licenses="" \
      org.opencontainers.image.authors="Ritesh Chaudhari" \
      org.opencontainers.image.vendor="Ritesh Chaudhari" \
      org.opencontainers.image.url="https://hub.docker.com/r/novosalus/adoptopenjdk-android-nodejs-image" \
      org.opencontainers.image.documentation="" \
      org.opencontainers.image.source="https://github.com/novosalus/adoptopenjdk-android-nodejs-image.git"

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

#smoke test 
RUN node -v && npm -v
