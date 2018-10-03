#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "<html><head></head><body><h1>My WebServer</h1>
 HOSTNAME: #{node['hostname']}<br />
 IPADDRESS: #{node['ipaddress']}<br />
</body></html>

"
end

service 'httpd' do
 action [ :enable, :start ]
end

