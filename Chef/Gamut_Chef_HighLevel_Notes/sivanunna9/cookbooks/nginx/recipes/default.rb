#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
execute "run apt-get update command" do
  command "apt-get update"
end
execute 'staring nginx server' do
  command 'service nginx stop'
end
package 'nginx' do
  action :purge
end
package 'nginx-common' do
  action :purge
end
