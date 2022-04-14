#
# Cookbook:: second_cookbook
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
#

# Install apache
package 'apache2'

service 'apache2' do
  supports :status => true
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<html>
  <body>
  <h1>helloworld</h1>
  </body>
 </html?'
end
