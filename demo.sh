https://www.youtube.com/watch?v=BSb0349Vm6E

https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/
brew tap mongodb/brew
brew install mongodb-community@4.4
mongod --config /usr/local/etc/mongod.conf

ps aux | grep -v grep | grep mongod

ws
cd ../TLE

code

npm init
npm install mongodb@3.4.0



#sudo mkdir /data/db

mongod --dbpath ~/data/db
#sudo chown $USER /data/db
#mongod
---
#!/bin/bash
docker build  -f Dockerfile -t ernesen/backend .
docker tag backend ernesen/backend:2.0
docker push ernesen/backend:2.0

docker run -it --rm --name backend -h backend -p 3000:3000 ernesen/backend sh

docker run -d --name backend -h backend -p 3000:3000 ernesen/backend

docker logs -f backend
---
#!/bin/bash
ng build --prod 
docker build  -f Dockerfile -t ernesen/frontend .
docker tag frontend ernesen/frontend:2.0
docker push ernesen/frontend:2.0

---
helm list --short
helm install dev guestbook --set frontend.config.guestbook_name=DEV 

helm list --short
helm uninstall guestbook
helm uninstall dev
minikube addons enable ingress
minikube IP=192.168.99.120

192.168.99.120 frontend.minikube.local
192.168.99.120 backend.minikube.local
192.168.99.120 dev.frontend.minikube.local
192.168.99.120 dev.backend.minikube.local
192.168.99.120 test.frontend.minikube.local
192.168.99.120 test.backend.minikube.local
---
https://stackoverflow.com/questions/50333003/could-not-find-module-angular-devkit-build-angular
npm install -g @angular/cli
npm install --save-dev @angular-devkit/build-angular
ng build --prod

---
Globo_logo.png
 2020 GCG TLE Online Conference

---
echo "# backend" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M master
git remote add origin https://github.com/ernesen/backend.git
git push -u origin master

--
echo "# frontend" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M master
git remote add origin https://github.com/ernesen/frontend.git
git push -u origin master

---
docker login --username=ernesen --email=ernese@sg.ibm.com
docker.io/ernesen/backend

https://hub.docker.com/u/ernesen

docker pull ernesen/frontend:2.0
docker pull ernesen/backend:2.0

https://ibm.ent.box.com/file/713821204447

Application Pipeline
https://app.pluralsight.com/profile/ernese-norelus
https://app.pluralsight.com/course-player?clipId=9d30a07d-9271-412c-969d-e7ac691d3e47

-----
http://localhost:8080/job/colin/1/console
https://github.com/ernesen/frontend
https://github.com/ernesen/backend
https://hub.docker.com/r/ernesen/backend/tags
http://dev.frontend.minikube.local/

helm list --short 
helm uninstall dev 
helm install dev guestbook

APPLICATION_NAME=$(echo ${PWD##*/} | awk '{print tolower($0)}')
VERSION=2.0

#docker build  -f Dockerfile -t ernesen/backend:2.0 .

docker build  -f Dockerfile -t ernesen/$APPLICATION_NAME:$VERSION .
docker push ernesen/$APPLICATION_NAME:$VERSION





























