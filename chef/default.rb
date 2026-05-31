# Chef recipe will go here
#
# Cookbook:: nginx_web
# Recipe:: default
#

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

file '/usr/share/nginx/html/index.html' do
  content '<html><body><h1>Hello from Chef!</h1><p>Nginx installed successfully.</p></body></html>'
  owner 'root'
  group 'root'
  mode '0644'
end
