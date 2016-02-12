#
# Cookbook Name:: addressbook
# Recipe:: default
#
# Copyright (C) 2016 Vikas Sakode
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'java'
include_recipe 'users::sysadmins'
include_recipe 'java_ext::jce'
include_recipe 'datadog::dd-agent'
include_recipe 'datadog::dd-handler'
include_recipe 'newrelic'
