FROM mcr.microsoft.com/dotnet/sdk:6.0.402
RUN apt update && apt install unzip -y && apt clean
WORKDIR /awscli-install
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip && ./aws/install
WORKDIR /app
RUN rm -rf /awscli-install
