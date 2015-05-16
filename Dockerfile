FROM microsoft/aspnet:1.0.0-beta4

ADD . /app
WORKDIR /app

#RUN ["dnu", "restore"]
RUN dnu restore

EXPOSE 5000
#ENTRYPOINT ["dnx", "./src/ASPNetTest", "kestrel"]
ENV DNX_TRACE 1
ENTRYPOINT sleep 10000 | dnx ./src/ASPNetTest kestrel
