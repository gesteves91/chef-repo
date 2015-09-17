name             'wrapper'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures wrapper'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.3'

depends 'java'
depends 'apt'
depends 'windows'
depends '7-zip'
depends 'ark'
depends 'nodejs'