# Cookbook name: Barbican-monitoring
# Default attributes for this wrapper.
default['barbican-monitoring']['install-agent'] = false
default['barbican-monitoring']['notification-plan'] = ''
# Default path to our symmetric key for Rackspace data bag decryption.
default['barbican-monitoring']['credentials_path'] = '/etc/chef/credentials_key'
default['barbican-monitoring']['node_type'] = ''
