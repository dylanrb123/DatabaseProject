mvn clean dependency:copy-dependencies package
jar cfm runServer.jar Manifest.txt -C target/classes/ .