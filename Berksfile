# encoding: UTF-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

source 'https://supermarket.chef.io'

metadata

cookbook 'cron', '~> 5.0'

group :integration do
  cookbook 'test', path: 'test/fixtures/cookbooks/test'
  cookbook 'apt'
  cookbook 'yum'
end
