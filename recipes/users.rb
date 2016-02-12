node.set['authorization']['sudo']['groups'] = ['sysadmin']
node.set['authorization']['sudo']['passwordless'] = true
include_recipe "sudo"
include_recipe 'users::sysadmins'
