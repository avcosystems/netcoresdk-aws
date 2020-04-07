FROM mcr.microsoft.com/dotnet/core/sdk:3.1
RUN apt-get update && apt-get install ca-certificates apt-transport-https -y
RUN apt-key adv --fetch-keys https://deb.nodesource.com/gpgkey/nodesource.gpg.key && echo "deb https://deb.nodesource.com/node_12.x buster main" > /etc/apt/sources.list.d/nodesource.list
RUN apt-get update && apt-get install nodejs -y
RUN apt-get update && apt-get install python3 -y
RUN apt-get update && apt-get install python3-pip -y
RUN pip3 install awscli --upgrade
RUN pip3 install awsebcli --upgrade
RUN apt-get update && apt-get install zip -y