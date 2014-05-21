#
# Cookbook Name:: memcached
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

package "memcached"

template "/etc/memcached.conf" do
    source "memcached.conf.erb"
    mode 0644
    owner "root"
    group "root"
    variables({
        :port => node['port'],
        :memory_decimal => node['memory_decimal'],
        :max_connections => node['max_connections']
    })
end

service "memcached" do
    action [ :enable, :start ]
end
