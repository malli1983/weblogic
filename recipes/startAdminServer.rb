# Start Admin Server
 bash "Startup Admin Server" do
   user node['oracle']['user']
   group node['oracle']['group']
   code <<-EOH
    "#{node['oracle']['domain_home']}"
   nohup #{node['oracle']['domain_home']}/#{node['oracle']['domain_name']}/bin/startWebLogic.sh &>/dev/null &
   sleep 3m
   EOH
 end
