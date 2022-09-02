#!/bin/bash
trap "rm ngrok.zip" EXIT

curl -sL https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o ngrok.zip
unzip ngrok.zip

sudo mv ./ngrok /usr/bin/ngrok