Cookbook Name:: barbican-monitoring
Recipe:: alarms
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
# Loop over our checks to create corresponding alarms.
node['barbican-monitoring']['checks'].each do |check|
cloud_monitoring_alarm check['alarms']['alarm_label'] do
check_label check['check_label']
notification_plan_id check['alarms']['alarm_notification_plan_id']
criteria check['alarms']['alarm_criteria']
action :create
end
end
