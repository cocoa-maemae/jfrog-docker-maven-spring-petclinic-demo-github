# How to run the project

## Build and run directly from the source code on local environments such as macos or windows
```
# clone
git clone https://github.com/cocoa-maemae/2025-jfrog-technical-assessment.git

# build Java source code on local
cd jfrog-docker-maven-spring-petclinic-demo-github
./mvnw package

# build docker container image
docker build --no-cache -t spring-petclinic:latest .

# run docker container
docker run --name spring-petclinic -p 8080:8080 -d spring-petclinic:latest

```
After running the docker container successfully, access [http://localhost:8080/](http://localhost:8080/) The below UI is displayed.
<img width="1159" alt="spring-petclinic" src="https://github.com/user-attachments/assets/308c0180-0cb9-4d6f-ad2d-443679e7e75f" />



## Pull and run from the JFrog Artifactory on local environments such as macos or windows
In this case, the built docker image is stored in JFrog Artifactory. All you need to do is to log into JFrog Artifactory, pull the image, and run the docker container.
```
# login
echo $JFROG_TOKEN | docker login -u $JFROG_USERID ${JFROG_DOMAIN} --password-stdin

# pull the docker container image stored in JFrog Artifactory
docker pull ${JFROG_DOMAIN}/${JFROG_DOCKER_REPO}/spring-petclinic:latest

# run docker container
docker run --name spring-petclinic -p 8080:8080 -d ${JFROG_DOMAIN}/${JFROG_DOCKER_REPO}/spring-petclinic:latest

```
After running the docker container successfully, access [http://localhost:8080/](http://localhost:8080/) The same UI as above is displayed.

# jfrog-docker-maven-spring-petclinic-demo-github
