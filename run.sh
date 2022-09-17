

echo "Starting database container ..."
docker run \
  -d \
  --rm \
  -v "${PWD}/data/":/var/opt/mssql/data \
  -v "${PWD}/logs/":/var/opt/mssql/log \
  -v "${PWD}/secrets/":/var/opt/mssql/secrets \
  -e ACCEPT_EULA="True" \
  -p 1433:1433 \
  --name horizon-database \
  mcr.microsoft.com/mssql/server:2019-latest
