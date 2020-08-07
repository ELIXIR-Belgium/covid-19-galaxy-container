
# Example Galaxy container
#
# to build the docker image, go to root of training repo and
#    docker build -t containername -f Dockerfile .
#
# to run image:
#    docker run -p "8080:80" -t  containername 

FROM quay.io/bgruening/galaxy:20.05
MAINTAINER ELIXIR Belgium

ENV GALAXY_CONFIG_BRAND "Covid-19"


ADD bin/docker-install-workflow.sh /setup-workflow.sh
#ADD /data /data/
ADD tools.yaml tools.yaml 
ADD /workflow /workflowDir
RUN chmod 755 /setup-workflow.sh
RUN /setup-workflow.sh
