FROM microsoft/mssql-server-linux

ENV DEBIAN_FRONTEND noninteractive
RUN locale-gen en_US.UTF-8
RUN apt-get update && apt-get install -y curl apt-transport-https

# Import the public repository GPG keys.
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

# Register the Microsoft Ubuntu repository.
RUN curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | tee /etc/apt/sources.list.d/msprod.list

# Install mssql-tools
RUN apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql mssql-tools

