#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'chef-sugar::default'

if ec2?

	puts 'It should not work!'

else

	puts 'It must work!'

end

#result = ""

#search(:node, 'ipaddress:*',
	
#	:filter_result => { 'hosts_grab' => ['virtualization', 'system']}).each do |result|

#    puts result['hosts_grab']

#if result.values[0] == "vbox"
#		puts "I have learned s#{}omething today!"	
#	else
#		puts "This is crazy!. Kinda work"
#	end
#end