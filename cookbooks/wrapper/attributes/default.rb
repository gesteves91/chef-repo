default['java']['accept_agreement'] = true
default['java']['oracle']['accept_oracle_download_terms'] = true
default['java']['jdk_version'] = 8
default['java']['install_flavor'] = 'oracle'

default['java']['java_home'] = '/home/vagrant/'

node.override['mongodb']['package_version'] = '3.0.6'

default['git']['version'] = '2.5.3'

#node.set['mongodb']['package_name'] = 'mongodb-10gen-server'

default['bower']['version'] = "1.3.12"

default['wrapper']['user'] = "ubuntu"