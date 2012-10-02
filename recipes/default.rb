#
# Cookbook Name:: nagios-check-graphite
# Recipe:: default
#
# Copyright 2011, Jedibvba
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "git"
include_recipe "nagios"

git "/opt/check-graphite" do
  repository "git://github.com/monigusto/nagios_tools"
  reference "0f522dcee37538f670ffb1134045fb9d4358dd13"
  action :sync
end

link "#{node['nagios']['plugin_dir']}/check_graphite_data" do
    to "/opt/check-graphite/check_graphite_data"
end
