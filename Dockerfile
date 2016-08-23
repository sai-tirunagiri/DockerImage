FROM mysql 
FROM tomcat

# Packaged dependencies
RUN apt-get update && apt-get install -y \
	apparmor \
	apt-utils \
	curl \
	git \
	tar \
	ant \
	zip \
	wget \
	--no-install-recommends 

RUN git clone https://github.com/sai-tirunagiri/DevOpsApplication.git \
	&& cd DevOpsApplication/DevOpsApplication/ \
	&& ant create \
	&& cp /usr/local/tomcat/DevOpsApplication/DevOpsApplication/DevOpsDemo.war /usr/local/tomcat/webapps/
