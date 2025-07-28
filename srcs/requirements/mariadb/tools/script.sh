#!/bin/bash



service mysql start


echo "CREATE DATABASE IF NOT EXISTS $SSSQL_DATABASE ;" > db1.sql
echo "CREATE USER IF NOT EXISTS '$SSQL_USER'@'%' IDENTIFIED BY '$SSQL_SUN' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $SSQL_DATABASE.* TO '$SSQL_USER'@'%' ;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql

kill $(cat /var/run/mysqld/mysqld.pid)


# --------------------------------

# mysql -e "CREATE DATABASE IF NOT EXISTS \`${SSSQL_DATABASE}\`;"

# mysql -e "CREATE USER IF NOT EXISTS \`${SSQL_USER}\`@'localhost' IDENTIFIED BY '${SSQL_SUN}';"

# mysql -e "GRANT ALL PRIVILEGES ON \`${SSQL_DATABASE}\`.* TO \`${SSQL_USER}\`@'%' IDENTIFIED BY '${SSQL_SUN}';"

# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SSQL_ROOT_SUN}';"

# mysql -e "FLUSH PRIVILEGES;"

# mysqladmin -u root -p$SSQL_ROOT_SUN shutdown

# exec mysqld_safe



mysqld