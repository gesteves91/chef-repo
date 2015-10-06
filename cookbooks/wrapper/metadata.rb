name             'wrapper'
maintainer       'Avenue Code LLC'
maintainer_email 'gesteves@avenuecode.com'
license          'All rights reserved'
description      'Installs/Configures wrapper'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.10'

depends 'java'
depends 'apt'
depends 'windows'
depends '7-zip'
depends 'ark'


depends 'nodejs', '~> 2.4.2'
depends 'runit', '~> 1.7.2'
#depends 'mongodb', '~> 0.16.2'


depends 'mongodb3', '~> 2.0.0'
depends 'git', '~> 4.3'
depends 'elkstack', '~> 6.0.4'
depends 'gradle', '~> 1.5.1'

