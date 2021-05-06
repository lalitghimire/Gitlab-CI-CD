# The are some architecture requirements when "cross-compiling" 
# between different CPU architectures (ARM v x86)
#FROM arm32v7/node:12.6.0
#Comment line above and use this one locally
FROM node:10  

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 8888

CMD ["node", "server.js"]