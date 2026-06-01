#
# Cookbook:: steven_nginx_site
# Recipe:: default
#
# Copyright:: 2026, The Authors, All Rights Reserved.
package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<h1>Hello from Steven Junior Mafuya - Chef Automation</h1>'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
