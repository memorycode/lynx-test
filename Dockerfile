FROM ubuntu:latest
RUN mkdir /home/site
WORKDIR /home/site
RUN apt-get update
RUN apt-get install unzip
EXPOSE 3000
ADD https://github.com/lune-org/lune/releases/download/v0.8.5/lune-0.8.5-linux-x86_64.zip /home/site
RUN unzip lune-0.8.5-linux-x86_64.zip
COPY . .
CMD ["./lune", "run", "server.luau"]