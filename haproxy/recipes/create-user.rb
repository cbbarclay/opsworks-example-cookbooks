root@mysql-1# mysql -u root -p -e "INSERT INTO mysql.user (Host,User) values ('10.0.0.100','haproxy_check'); FLUSH PRIVILEGES;"
