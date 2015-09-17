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
include_recipe "nodejs::npm"
include_recipe 'wrapper::java'