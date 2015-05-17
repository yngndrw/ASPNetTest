FROM microsoft/aspnet:1.0.0-beta4

# Cache NuGet packages separately from the code
#COPY ./src/ASPNetTest/project.json /app
RUN find . -type f -name *.json -exec cp {} /app ";"
WORKDIR /app
RUN dnu restore

COPY . /app

EXPOSE 5000
ENV DNX_TRACE 1
ENTRYPOINT sleep 9999999999 | dnx ./src/ASPNetTest kestrel