name 'aide'
description 'Installs and configures AIDE HIDS'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
maintainer 'Michael Burns'
maintainer_email 'michael@mirwin.net'
license 'BSD-2-Clause'
version '0.2.2'

supports 'centos'
supports 'ubuntu'

depends 'cron'

recipe 'aide', 'Installs and configures AIDE HIDS'
issues_url 'https://github.com/mburns/chef-aide/issues'
source_url 'https://github.com/mburns/chef-aide'
chef_version '>= 12' if respond_to?(:chef_version)
