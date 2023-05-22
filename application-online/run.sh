#!/bin/sh
exec java -Dspring.profiles.active=docker -jar /deployment/app.jar
