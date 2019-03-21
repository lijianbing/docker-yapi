FROM node:8-alpine

RUN apk add --no-cache python make tini 
WORKDIR /app/vendors
EXPOSE 3000

COPY ./yapi /app/vendors
COPY ./entrypoint.sh /app/vendors/

ENTRYPOINT [ "/sbin/tini", "--" ]
CMD [ "/app/vendors/entrypoint.sh" ]
