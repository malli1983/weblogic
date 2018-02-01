cookbook_file "#{node['oracle']['domain_home']}/appDeploymentScript.py" do
  source 'appDeploymentScript.py'
  owner 'oracle'
  group 'oracle'
  mode '0755'
  action :create
end

git "#{node['oracle']['domain_home']}/wlsapplication" do
  repository 'git://github.com/prparmar77/wlsapplication.git'
  revision 'master'
  user  'oracle'
  group 'oracle'
  action :sync
end

execute "wlst.sh appDeploymentScript.py" do
  command "#{node['oracle']['wls_install_dir']}/common/bin/wlst.sh #{node['oracle']['domain_home']}/appDeploymentScript.py -u #{node['oracle']['admin_user']} -p #{node['oracle']['admin_pass']} -a t3://#{node['ipaddress']}:#{node['oracle']['admin']['port']}  -f #{node['oracle']['domain_home']}/wlsapplication/#{node['oracle']['deployment_war']} -t 'AdminServer' -n #{node['oracle']['deployment_war']}"
  user node['oracle']['user']
  group node['oracle']['group']
  action :run
end

#include_recipe "chef_handler"
#chef_handler "Chef::Handler::Jenkins" do
#      source "chef/handler/jenkins"
#      arguments :url => 'http://129.144.52.96:8080/jenkins'
#      action :enable
#    end
