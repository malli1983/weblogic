# Create oracle User
user node['oracle']['user'] do
  action :create
end

# Create the oracle  group
group node['oracle']['group'] do
  members [node['oracle']['user']]
end

# bea silent install file
template "/tmp/silent.xml" do
  source 'silent.xml.erb'
  owner node['oracle']['user'] 
  group node['oracle']['group']
  mode '0744'
end

#create stage folder
directory node['oracle']['stg'] do
  owner node['oracle']['user']
  group node['oracle']['group']
  action :create
end

#create Installers folder
directory node['oracle']['installers'] do
  owner node['oracle']['user']
  group node['oracle']['group']
  action :create
end

# Download bea 10.3 installer
remote_file "server103_linux32" do
  path "#{node['oracle']['installers']}/#{node['oracle']['wls_bin_installer']}"
  source "#{node['oracle']['download_loc']}#{node['oracle']['wls_bin_installer']}"
  owner node['oracle']['user']
  group node['oracle']['group']
  mode '0744'  
end

# Install Weblogic
execute "Install Weblogic" do
  command "#{node['oracle']['installers']}/#{node['oracle']['wls_bin_installer']} -mode=silent -silent_xml=/tmp/silent.xml"
  user node['oracle']['user']
  group node['oracle']['group']
  creates node['oracle']['wls_install_dir']
  action :run
end
