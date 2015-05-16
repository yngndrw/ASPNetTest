FROM microsoft/aspnet:1.0.0-beta4

COPY ./src/ASPNetTest/project.json /app/
RUN dnu restore

ADD . /app
WORKDIR /app

RUN dnu restore

EXPOSE 5000
ENV DNX_TRACE 1
ENTRYPOINT sleep 9999999999 | dnx ./src/ASPNetTest kestrel
