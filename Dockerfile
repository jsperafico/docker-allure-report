FROM alpine:latest

ARG ALLURE_VERSION=2.13.4
ADD https://repo1.maven.org/maven2/io/qameta/allure/allure-commandline/${ALLURE_VERSION}/allure-commandline-${ALLURE_VERSION}.zip allure_latest.zip

RUN apk add openjdk8 unzip && \
	mkdir /allure-result && \
	mkdir /allure-install && \
	unzip /allure_latest.zip -d /allure-install && \
	rm /allure_latest.zip && \
	ln -s /allure-install/allure-${ALLURE_VERSION} /allure-install/latest

ENV PATH="${PATH}:/allure-install/latest/bin"
VOLUME /allure-result

WORKDIR /allure-result