execute mysql_check do
  node[:deploy].each do |application, deploy|
    command "/usr/bin/mysql -h#{deploy[:database][:host]} -u#{deploy[:database][:username]} -p#{deploy[:database][:password]} #{deploy[:database][:database]} -e'INSERT INTO mysql.user (Host,User) values (\'#{node[:opsworks][:instance][:private_ip]}\',\'haproxy_check\'); FLUSH PRIVILEGES;'
  end
end
