#
# Cookbook Name:: wrapper
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
include_recipe 'ark'
include_recipe 'java'
include_recipe "nodejs"
include_recipe 'runit'
#include_recipe "mongodb::default"
include_recipe "nodejs::npm"
include_recipe "wrapper::java"
include_recipe "wrapper::nodejs"
include_recipe "elkstack"
#include_recipe "wrapper::nodejs"
#include_recipe "git::default"

#Installing and Configuring MongoDB
#include_recipe "mongodb::defnpm list --depth=0ault"
#include_recipe "mongodb::10gen_repo"

#package node[:mongodb][:package_name] do
# action :install
##  version node[:mongodb][:package_version]
#  options "--nogpgcheck"
#end

#Installing and configuring MongoDB (latest version)
include_recipe "mongodb3"
include_recipe "mongodb3::mongos"
include_recipe "mongodb3::mms_automation_agent"
include_recipe "mongodb3::mms_monitoring_agent"
include_recipe "gradle"
#git_client 'default' dot
#    action :install
#end


apt_repository 'git' do
  uri          'ppa:git-core/ppa'
  distribution node['lsb']['codename']
end

package 'git' do
	action :install
end




#mongodb_instance "mongodb" do
#    port node['application']['port']
#end

#mongodb_instance "my_instance" do
#    port node['mongodb']['port'] + 100
#      dbpath "/data/"
#end