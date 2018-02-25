#
# Cookbook Name:: test
# Recipe:: default
#
# License:: Apache License, Version 2.0
#

node.default['aide']['paths'] = {
  '/data/.*' => '!'
}

include_recipe 'aide'
