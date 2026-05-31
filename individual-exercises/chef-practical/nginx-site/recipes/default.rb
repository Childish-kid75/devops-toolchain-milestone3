package 'nginx'

service 'nginx' do
  action [:enable, :start]
end


file '/var/www/html/index.html' do
  content '<h1>Chef Practical Exercise Successful!</h1>'
  owner 'root'
  group 'root'
  mode '0644'
end
