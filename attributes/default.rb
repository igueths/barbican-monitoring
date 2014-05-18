# Cookbook name: Barbican-monitoring
# Default attributes for this wrapper.
default['barbican-monitoring']['install_agent'] = false
default['barbican-monitoring']['node_type'] = ''
# More default declarations for checks.
default['barbican-monitoring']['checks']['remote'] = false
default['barbican-monitoring']['checks']['check_entity_id'] = ""
default['barbican-monitoring']['checks']['check_type'] = ""
default['barbican-monitoring']['checks']['check_label'] = ""
default['barbican-monitoring']['checks']['check_details'] = ""
# Common alarm attributes.
default['barbican-monitoring']['checks']['alarms']['alarm_label'] = ""
default['barbican-monitoring']['checks']['alarms']['alarm_criteria'] = ""
default['barbican-monitoring']['checks']['alarms']['alarm_check_label'] = ""
default['barbican-monitoring']['checks']['alarms']['alarm_notification_plan_id'] = ""
