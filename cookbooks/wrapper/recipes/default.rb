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
#include_recipe "git::default"

#git_client 'default' do
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