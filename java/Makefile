GRADLE ?= "./gradlew"
MAVEN ?= "mvn"
.PHONY: all clean

all: dist dist/backdoor-java-gradle.jar dist/backdoor-java-maven.jar

clean:
	$(RM) -r .gradle build dist target

dist/backdoor-java-gradle.jar: build.gradle src/main/java/Backdoor.java
	$(GRADLE) --no-daemon build
	mv build/libs/backdoor-java-gradle.jar dist/

dist/backdoor-java-maven.jar: pom.xml src/main/java/Backdoor.java
	$(MAVEN) package
	mv target/backdoor-java-maven.jar dist/

dist:
	mkdir -p dist
