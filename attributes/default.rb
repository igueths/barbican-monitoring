# Cookbook name: Barbican-monitoring
# Default attributes for this wrapper.
default['barbican-monitoring']['install_agent'] = false
default['barbican-monitoring']['notification_plan'] = ''
default['barbican-monitoring']['node_type'] = ''
# More default declarations for checks.
default['barbican-monitoring']['check_entity_id'] = ""
default['barbican-monitoring']['check_type'] = ""
default['barbican-monitoring']['check_label'] = ""
default['barbican-monitoring']['check_details'] = ""
# Common alarm attributes.
default['barbican-monitoring']['alarm_label'] = ""
default['barbican-monitoring']['alarm_criteria'] = ""
default['barbican-monitoring']['alarm_check_label'] = ""
default['barbican-monitoring']['alarm_notification_plan_id'] = ""
