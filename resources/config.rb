#
# Author:: Seth Chisamore (<schisamo@opscode.com>)
# Cookbook:: gunicorn
# Resource:: config
#
# Copyright:: 2011-2016, Chef Software, Inc <legal@opscode.com>
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

actions :create, :delete
default_action :create

attribute :path, kind_of: String, name_attribute: true
attribute :template, kind_of: String, default: 'gunicorn.py.erb'
attribute :cookbook, kind_of: String, default: 'gunicorn'

attribute :listen, kind_of: [String, Array], default: '0.0.0.0:8000'
attribute :backlog, kind_of: Integer, default: 2048
attribute :preload_app, kind_of: [TrueClass, FalseClass], default: false

attribute :worker_processes, kind_of: Integer, default: 4
attribute :worker_class, kind_of: String, default: 'sync'
attribute :worker_timeout, kind_of: Integer, default: 60
attribute :worker_keepalive, kind_of: Integer, default: 2
attribute :worker_max_requests, kind_of: Integer, default: 0
attribute :worker_max_requests_jitter, kind_of: Integer, default: 0
attribute :worker_connections, kind_of: Integer, default: 1000
attribute :worker_threads, kind_of: Integer, default: 1
attribute :worker_graceful_timeout, kind_of: Integer, default: 30

attribute :limit_request_line, kind_of: Integer, default: 4094
attribute :limit_request_fields, kind_of: Integer, default: 100
attribute :limit_request_field_size, kind_of: Integer, default: 8190

attribute :accesslog, kind_of: String, default: nil
attribute :access_log_format, kind_of: String, default: nil
attribute :errorlog, kind_of: String, default: nil
attribute :loglevel, kind_of: String, default: nil
attribute :logger_class, kind_of: String, default: nil
attribute :logconfig, kind_of: String, default: nil
attribute :secure_scheme_headers, kind_of: Hash, default: nil
attribute :forwarded_allow_ips, kind_of: String, default: nil
attribute :proc_name, kind_of: String, default: nil

attribute :server_hooks, kind_of: Hash, default: Hash.new, \
                         callbacks: {
                           'should contain a valid gunicorn server hook name' => ->(hooks) { Chef::Resource::GunicornConfig.validate_server_hook_hash_keys(hooks) },
                         }

attribute :raw_env, kind_of: Array, default: nil

attribute :owner, regex: Chef::Config[:user_valid_regex]
attribute :group, regex: Chef::Config[:group_valid_regex]
attribute :pid, kind_of: String

VALID_SERVER_HOOK_NAMES = [
  :on_starting, :on_reload, :when_ready, :pre_fork, :post_fork,
  :pre_exec, :pre_request, :post_request, :worker_exit
].freeze

private

def self.validate_server_hook_hash_keys(server_hooks)
  server_hooks.keys.reject { |key| VALID_SERVER_HOOK_NAMES.include?(key.to_sym) }.empty?
end
