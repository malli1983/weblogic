default['oracle']['user']                                    = 'oracle'
default['oracle']['user_home']                               = '/home/oracle'
default['oracle']['group']                                   = 'oracle'
default['oracle']['beahome']                                 = '/u01/mwhome'
default['oracle']['stg']                                     = '/u01'
default['oracle']['installers']                              = '/u01/Installers'

default['oracle']['java_installer']                           = 'jdk-9.0.4_linux-x64_bin'
default['oracle']['java_install_dir']                         = '/u01/mwhome/jdk9'

default['oracle']['domain_home']                             ='/u01/mwhome/user_projects/domains'
default['oracle']['domain_name']                             = 'clouddemodomain'
default['oracle']['wls_install_dir']                         = '/u01/mwhome/wlserver_12.3'

default['oracle']['admin_user']                              = 'weblogic'
default['oracle']['admin_pass']                              = 'welcome1'
default['oracle']['admin']['port']                           = 7001
default['oracle']['admin']['url']                          	 = 't3://192.168.0.1:7001'
default['oracle']['install_node_manager_service']            = 'no'
default['oracle']['nodemgr_port']                            = 5556
default['oracle']['local_jvms']                              = '/u01/mwhome/jdk-9.0.4'
#default['oracle']['local_jvms']                             = '/u01/mwhome/jdk-9.0.4'
default['oracle']['bea_bundled_jvms']                        = []
default['oracle']['wls_installer']                           = 'fmw_12.2.1.3.0_wls_quick.jar'
default['oracle']['wls_generic_installer']                   = 'fmw_12.2.1.3.0_wls_quick.jar'
default['oracle']['install_type']                            = 'WebLogic Server'
default['oracle']['managed_server']['name']                  = 'ms1'
default['oracle']['managed_server']['port']                  = 7003
default['oracle']['cluster']                                 = ''
default['oracle']['deployment_war']                          = ''
default['oracle']['datasource']['name']                      = ''
default['oracle']['datasource']['driver']                    = 'oracle.jdbc.OracleDriver'
default['oracle']['datasource']['dbhost']                    = '192.168.0.2'
default['oracle']['datasource']['dbport']                    = 1521
default['oracle']['datasource']['dbsid']                     = ''
default['oracle']['datasource']['dbusername']                = ''
default['oracle']['datasource']['dbpassword']                = ''
default['oracle']['datasource']['target']                    = ''
