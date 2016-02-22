FROM jenkins:1.625.3
USER jenkins
COPY docker/plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
COPY docker/generate-jobs.xml /usr/share/jenkins/ref/jobs/generate-jobs/config.xml
COPY examples/demo.groovy /usr/share/jenkins/ref/jobs/generate-jobs/workspace/demo.groovy
COPY docker/startup.groovy /usr/share/jenkins/ref/init.groovy.d/startup.groovy

