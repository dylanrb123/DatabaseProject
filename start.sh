#!/bin/bash
killall java
java -jar runServer.jar &
cd src/main/web-app
npm run start