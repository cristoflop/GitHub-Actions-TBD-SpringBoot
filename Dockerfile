FROM openjdk:11-jre

ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT

ARG COMMIT_DATE=unspecified
LABEL commit_date=$COMMIT_DATE

COPY target/*.jar /usr/app/app.jar
CMD [ "java", "-jar", "/usr/app/app.jar" ]