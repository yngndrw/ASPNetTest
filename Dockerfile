FROM microsoft/aspnet:1.0.0-beta4

RUN find . -type f -name *.json -exec cp {} /app ";"

WORKDIR /app
RUN dnu restore

ADD . /app

EXPOSE 5000
ENV DNX_TRACE 1
ENTRYPOINT sleep 1000 | dnx ./src/ASPNetTest kestrel
