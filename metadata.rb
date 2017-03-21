name             'gunicorn'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache-2.0'
description      'Installs/Configures Gunicorn'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.1.0'

depends 'python'

%w(amazon centos debian fedora oracle redhat scientific ubuntu).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/gunicorn'
issues_url 'https://github.com/chef-cookbooks/gunicorn/issues'
chef_version '>= 12.1'
