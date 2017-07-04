#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node ['platform-family'] == "rhel"
   package = "httpd"
elseif node ['platform-family'] == "debian"
   package = "apache2"
end

package 'apache2' do
  package_name package
end

service 'apache2' do
  service_name 'httpd'
  action [:start,:enable]
end

