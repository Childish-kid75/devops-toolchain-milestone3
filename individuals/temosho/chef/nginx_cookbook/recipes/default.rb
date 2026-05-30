package 'nginx' do
  action :install
end
file '/var/www/html/index.html' do
  content '<h1>Hello from Chef!</h1>'
  action :create
end

service 'nginx' do
  action [ :enable, :start]
end
