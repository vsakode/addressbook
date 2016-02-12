include_recipe 'nginx'
app_port = node['tomcat']['port']
template "/etc/nginx/sites-enabled/default" do
  source 'nginx-proxy.erb'
  owner 'root'
  group 'root'
  mode  '0644'
  action :create
  variables(:app_port => app_port, :server_name => node.name)
  notifies :restart, "service[tomcat7]", :immediately
end
