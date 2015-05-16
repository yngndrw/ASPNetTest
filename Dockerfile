FROM microsoft/aspnet:1.0.0-beta4

COPY *.json */*.json */*/*.json /app

RUN ls -R

ADD . /app
WORKDIR /app

RUN dnu restore

EXPOSE 5000
ENV DNX_TRACE 1
ENTRYPOINT sleep 1000 | dnx ./src/ASPNetTest kestrel
