#
# Cookbook Name:: foreman
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "foreman::repo" if node['foreman']['use_repo']
include_recipe "foreman::config"

%w(foreman foreman-sqlite3 foreman-libvirt).each do |pack|
  package pack
end
node.default['foreman']['user'] = "foreman"
node.default['foreman']['config_path'] = "/etc/foreman"

#execute "foreman dbmigrate" do
#  command "/bin/bash -c /usr/share/foreman/extras/dbmigrate"
#  user node['foreman']['user']
#end
