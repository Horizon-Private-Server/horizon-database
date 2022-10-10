

echo "Starting database container ..."
docker run \
  -d \
  --rm \
  --user root \
  -v "${PWD}/data/":/var/opt/mssql \
  -e ACCEPT_EULA="True" \
  -e MSSQL_SA_PASSWORD=${HORIZON_MSSQL_SA_PASSWORD} \
  -p 1433:1433 \
  --name horizon-database \
  mcr.microsoft.com/mssql/server:2019-latest
