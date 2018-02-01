# Start Node Manager
 bash "Startup Nodemanager" do
   user node['oracle']['user']
   group node['oracle']['group']
   code <<-EOH
    "#{node['oracle']['domain_home']}"
   export LISTEN_ADDRESS="#{node['ipaddress']}"
   nohup #{node['oracle']['domain_home']}/#{node['oracle']['domain_name']}/bin/startNodeManager.sh &>/dev/null &
   EOH
 end
