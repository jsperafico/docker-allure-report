# Introduction

Use this image to run allure reports without installing on your machine. 

# Using docker-compose


```
version: '3'
services:
    allure-report:
        image: jsperafico/workspace-allure
        volumes:
            - ../your-local-folder:/allure-result
        ports:
            - "31275:31275"
        command: allure serve /allure-result --port 31275
```


# What is installed?

On this image you'll find:
- Alpine (3.12)
- openjdk (8)
- ALLURE_VERSION (2.13.4)