include_recipe 'addressbook::default'
include_recipe 'java'
include_recipe 'tomcat'
include_recipe 'users::sysadmins'
include_recipe 'addressbook::nginx'
include_recipe 'addressbook::deploy'
include_recipe 'java_ext::jce'

logrotate_app "nginxlog" do
  frequency "daily"
  cookbook "logrotate"
  path "/var/log/nginx/*.log"
  rotate 30
  create "640"
end

logrotate_app "newrelic" do
  options ['copytruncate']
  frequency "daily"
  cookbook "logrotate"
  path "/var/log/newrelic/*.log"
  rotate 30
  size "100M"
  create "640"
end
