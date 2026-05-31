apt_update 'refresh_ubuntu_package_index' do
  action :update
end

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

directory '/var/www/html' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

file '/var/www/html/index.html' do
  content '<!DOCTYPE html>
<html>
<head>
  <title>Reghardt Chef Nginx Deployment</title>
</head>
<body>
  <h1>DevOps Toolchain Milestone 3</h1>
  <h2>Chef Automation Evidence</h2>
  <p>This Nginx web page was created automatically using a Chef recipe.</p>
  <p>The recipe installed Nginx, enabled the service, started the service, and replaced the default web page.</p>
  <p>Student GitHub Username: Reghardt603065</p>
  <p>Cookbook Used: reghardt_nginx_site</p>
</body>
</html>'
  owner 'www-data'
  group 'www-data'
  mode '0644'
  action :create
end
