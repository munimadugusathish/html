FROM nginx:latest
# Create app directory
WORKDIR /app
COPY package*.html ./
#RUN apt-get update && apt-get install -y curl
#RUN curl --silent --location https://deb.nodesource.com/setup_12.x | bash -
#RUN apt-get install -y \
#nodejs
#RUN echo "Node: " && node -v
#RUN echo "NPM: " && npm -v

#RUN npm install
COPY . .
EXPOSE 3000
CMD ["start", "index.html"]

