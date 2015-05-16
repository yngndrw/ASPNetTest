FROM microsoft/aspnet:1.0.0-beta4

RUN dnu restore

ADD . /app
WORKDIR /app

EXPOSE 5000
ENV DNX_TRACE 1
ENTRYPOINT dnx ./src/ASPNetTest kestrel
