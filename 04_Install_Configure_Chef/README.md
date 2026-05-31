# 04 - Install & Configure Chef

## Objective

The objective of this section was to create a simple Chef recipe that installs Nginx and hosts a custom web page on the Ubuntu server.

## My Chef Setup

For this task, I created my own Chef cookbook called `reghardt_nginx_site`. The cookbook was used to automate the installation and configuration of an Nginx web server.

Instead of manually installing Nginx and editing the web page, the Chef recipe performs the setup automatically. This includes updating the Ubuntu package list, installing Nginx, enabling and starting the Nginx service, and replacing the default Nginx web page with a custom page.

## Tasks Completed

1. Checked that Chef Infra Client was installed.
2. Created a custom Chef cookbook called `reghardt_nginx_site`.
3. Created a `metadata.rb` file for cookbook information.
4. Created a `recipes/default.rb` file for the Nginx configuration.
5. Created a `solo.rb` file so Chef could run the cookbook locally.
6. Ran the Chef recipe locally using `chef-client`.
7. Tested the hosted web page using `curl`.
8. Tested the hosted web page in a browser using the Ubuntu server IP address.
9. Documented the process with screenshots and output evidence.

## Commands Used

```bash
chef-client --version

mkdir -p 04_Install_Configure_Chef/reghardt_nginx_site/recipes

nano 04_Install_Configure_Chef/reghardt_nginx_site/metadata.rb
nano 04_Install_Configure_Chef/reghardt_nginx_site/recipes/default.rb
nano 04_Install_Configure_Chef/solo.rb

sudo chef-client -z -c 04_Install_Configure_Chef/solo.rb -o 'recipe[reghardt_nginx_site]'

curl http://localhost
hostname -I
```

## Cookbook Structure

```bash
04_Install_Configure_Chef/
├── README.md
├── solo.rb
└── reghardt_nginx_site/
    ├── metadata.rb
    └── recipes/
        └── default.rb
```

## metadata.rb Content

```ruby
name 'reghardt_nginx_site'
maintainer 'Reghardt603065'
maintainer_email 'reghardtjvvo4o8o7@gmail.com'
license 'All Rights Reserved'
description 'Installs Nginx and publishes a custom DevOps milestone web page'
version '1.0.0'
chef_version '>= 16.0'
```

## solo.rb Content

```ruby
cookbook_path ["/home/reghardt/devops-toolchain-milestone3/04_Install_Configure_Chef"]
local_mode true
```

## recipes/default.rb Content

```ruby
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
```

## Explanation

Chef was used to automate the configuration of the Nginx web server. The cookbook `reghardt_nginx_site` contains the recipe used for this task.

The recipe first refreshes the Ubuntu package index. It then installs Nginx, enables the Nginx service, starts the service, and creates a custom HTML page in `/var/www/html/index.html`.

A `solo.rb` configuration file was used to tell Chef where the cookbook is stored. This allowed the recipe to run locally using `chef-client -z`.

After the recipe completed successfully, the custom web page was tested using `curl http://localhost`. The Ubuntu server IP address was also used to open the page in a browser and confirm that Nginx was hosting the custom page correctly.

## Testing

The following command was used to test the web page locally:

```bash
curl http://localhost
```

The following command was used to find the Ubuntu server IP address:

```bash
hostname -I
```

The IP address was then opened in a browser using:

```text
http://<your-server-ip>
```

## Evidence

[Chef install and version](chef-install-version.png)

[Chef folder structure](chef-folder-structure.png)

[Chef recipe file](chef-recipe.png)

[Chef local config file](chef-solo-config.png)

[Chef run output](chef-run-output.png)

[Chef curl test](chef-curl-test.png)

[Chef browser test](chef-browser-test.png)
