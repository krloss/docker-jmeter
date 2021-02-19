ARG JDK_VERSION=8
FROM azul/zulu-openjdk-alpine:${JDK_VERSION}
ARG JM_VERSION=5.1.1
ARG JM_NAME="apache-jmeter-${JM_VERSION}"
RUN cd /opt && wget -q "https://archive.apache.org/dist/jmeter/binaries/${JM_NAME}.tgz" \
	&& tar -xzf "${JM_NAME}.tgz" && rm "${JM_NAME}.tgz"
WORKDIR /opt/${JM_NAME}/bin

