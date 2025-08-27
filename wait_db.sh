#!/bin/sh
set -e

until mysql -h "$DB_HOST" -u"$DB_USER" -p"$DB_PASSWORD" -P "$DB_PORT" -e "SELECT 1"; do
  echo "MySQL is unavailable - sleeping"
  sleep 2
done

echo "MySQL is up - executing command"

exec "$@"
