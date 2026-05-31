# Install Nginx
package 'nginx' do
  action :install
end

# Start and enable Nginx service
service 'nginx' do
  action [:enable, :start]
end

# Create custom index.html
file '/var/www/html/index.html' do
  content '
  <!DOCTYPE html>
  <html>
  <head>
    <title>Tshiamo - Chef Exercise</title>
  </head>
  <body>
    <h1>DevOps Practical Assignment</h1>
    <h2>Chef Configured Nginx</h2>
    <p>Successfully configured by: Tshiamo</p>
    <p>Date: May 2026</p>
    <hr>
    <p>This web server was installed using Chef.</p>
  </body>
  </html>
  '
  mode '0644'
  action :create
end
