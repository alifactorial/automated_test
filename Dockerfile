FROM node
#FROM alpine:edge
#FROM ubuntu
RUN apt update 
#RUN apk add --update chromium@community

#RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#RUN dpkg -i google-chrome-stable_current_amd64.deb --fix-missing && apt-get -fy install
#RUN apk add nodejs npm chromium
RUN apt install -y libnss3 
# nodejs chromium-browser
WORKDIR /usr/src/app
COPY . .
RUN npm install && npm install -g nightwatch
CMD ["echo", "ali"]
#CMD ["./runner.sh", "hellen@factorial.co", "papapa33"]
#ENTRYPOINT ["/entrypoint.sh"]:
# Base docker image
#FROM debian:buster-slim
#RUN apt-get update && apt-get install -y \
#	apt-transport-https \
#	ca-certificates \
#	curl \
#	gnupg \
#	--no-install-recommends \
#	&& curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
#	&& echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list \
#	&& apt-get update && apt-get install -y \
#	google-chrome-stable \
#	fontconfig \
#	fonts-ipafont-gothic \
#	fonts-wqy-zenhei \
#	fonts-thai-tlwg \
#	fonts-kacst \
#	fonts-symbola \
#	fonts-noto \
#	fonts-freefont-ttf \
#	--no-install-recommends \
#	&& apt-get purge --auto-remove -y gnupg \
#	&& rm -rf /var/lib/apt/lists/*
#RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
#RUN apt install -y nodejs 
#RUN npm install && npm install -g nightwatch
#WORKDIR /usr/src/app
#COPY . .
#CMD ["echo", "ali"]
#CMD ["./runner.sh", "hellen@factorial.co", "papapa33"]
