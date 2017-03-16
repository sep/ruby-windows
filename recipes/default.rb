#
# Cookbook:: ruby-windows
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

INSTALL_DIR = node['ruby-windows']['installDir']
# Foodcritic FC009 is a false positive see https://github.com/acrmp/foodcritic/issues/451
package 'Ruby' do
  installer_type :inno
  source node['ruby-windows']['source']
  checksum node['ruby-windows']['SHA256']
  options "/DIR=\"#{INSTALL_DIR}\" /tasks=\"assocfiles,modpath\""
end
