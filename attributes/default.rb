# Cookbook name: Barbican-monitoring
# Default attributes for this wrapper.
default['barbican-monitoring']['install_agent'] = false
default['barbican-monitoring']['notification_plan'] = ''
# Default path to our symmetric key for Rackspace data bag decryption.
default['barbican-monitoring']['credentials_path'] = '/etc/chef/keys'
default['barbican-monitoring']['credentials_filename'] = 'data_bag_key'
default['barbican-monitoring']['node_type'] = ''
