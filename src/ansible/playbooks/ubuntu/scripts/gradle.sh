#!/bin/bash
trap "rm gradle.zip" EXIT

curl -sL https://services.gradle.org/distributions/gradle-7.2-bin.zip -o gradle.zip
unzip gradle.zip -d /usr/local/bin/gradle