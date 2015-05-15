FROM microsoft/aspnet:1.0.0-beta4
ADD . /app
WORKDIR /app
#RUN ["dnu", "restore"]

EXPOSE 5000
ENTRYPOINT ["dnx", "./", "kestrel"]
