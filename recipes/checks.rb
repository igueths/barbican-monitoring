# Cookbook Name:: Barbican-monitoring
# Recipe:: Checks
#
# Copyright 2014, Rackspace
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Loop through our various checks as defined in our node attributes, and create
# them.

node['barbican-monitoring']['checks'].each do |check|
# Is this a remote or local check i.e., agent?
if(check['remote'] == true)
# Remote check, so we need to act accordingly when we create the check.
# Also, we don't specify things like period, timeout in this cookbook so far
# because the Cloud Monitoring API already uses sane defaults for 99 percent of
# cases. Might specify these later on though!
cloud_monitoring_check check['check_label'] do
type check['check_type']
details check['check_details']
monitoring_zones_poll check['monitoring_zones']
entity_id check['entity_id']
action :create
end
else
# Local check i.e., agent.
cloud_monitoring_check check['check_label'] do
type check['check_type']
details check['check_details']
entity_id check['check_entity_id']
action :create
end
end
end
