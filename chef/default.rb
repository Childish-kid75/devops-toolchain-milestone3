#
# Cookbook:: Milestone3_cookbook
# Recipe:: default
#
# Copyright:: 2026, The Authors, All Rights Reserved.
# install needed packages
package 'nginx' do
  action :install
end

# start nginx
service 'nginx' do
  action [:enable, :start]
end


# Display
file '/var/www/html/index.html' do
  content '<h1>Hello Sir this is my Nginx website</h1>'

end
