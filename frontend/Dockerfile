FROM node:lts
# ENV HOME=/app/vite-project
WORKDIR /app
COPY vite-project .
RUN apt update \
&& yarn install
EXPOSE 5173
CMD ["yarn", "dev", "--host"]