FROM microsoft/aspnet:1.0.0-beta5

ADD . ./app/
WORKDIR ./app/

RUN dnu restore

EXPOSE 5000
ENV DNX_TRACE 1
ENTRYPOINT dnx ./src/ASPNetTest kestrel
