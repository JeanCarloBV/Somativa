FROM ubuntu
RUN mkdir /app
WORKDIR /app
RUN apt-get update
RUN apt-get install nodejs -y
RUN apt install npm -y
COPY . .
#RUN tar xvzf /app/ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin
#RUN ngrok config add-authtoken cr_2Vi0lb5Vhij1nAkr1lsugVNvNJq
#RUN ngrok http 3000
CMD ["npm", "start"]
