FROM dockerhub.spk.no:5000/base-centos-java/master

COPY target/*.jar /
