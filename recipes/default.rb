#
# Cookbook:: ruby-windows
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

INSTALL_DIR = node["ruby-windows"]["installDir"]

package "Ruby" do 
  installer_type :inno
  source "#{node["ruby-windows"]["source"]}"
  checksum "#{node["ruby-windows"]["SHA256"]}"
  options "/DIR=\"#{INSTALL_DIR}\""
end

env 'Path' do
  value "#{ INSTALL_DIR }\\bin"
  action :modify
  delim ';'
end
