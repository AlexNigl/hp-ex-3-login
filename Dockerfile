FROM docker.io/node:22-alpine
COPY ./final-build/ /
RUN ls
RUN mkdir logs
RUN ls
ENV CUSTOM_SERVER_PORT 3000
EXPOSE 3000
CMD node index.js
