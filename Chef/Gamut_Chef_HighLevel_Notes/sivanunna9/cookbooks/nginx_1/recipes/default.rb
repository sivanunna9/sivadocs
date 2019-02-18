#
# Cookbook:: nginx_1
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
execute "run apt-get update command" do
  command "apt-get update"
end

package "nginx" do
  action :install
end

cookbook_file "/var/www/html" do
  source "index.html"
end 

execute "this command will start nginx server" do
  command "service nginx start"
end
