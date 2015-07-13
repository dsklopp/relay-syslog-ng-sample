#
# Cookbook Name:: relay-syslog-ng
# Recipe:: default
#
# Copyright (C) 2015 Daniel Klopp
#
# All rights reserved - Do Not Redistribute
#


%w(syslog-ng-core syslog-ng).each do |pack|
	package pack
end



template "/etc/syslog-ng/syslog-ng.conf" do
    source "syslog-ng.conf.erb"
    owner "root"
    group "root"
    mode 0644
    variables({
        'loggly_token' => 'TOKEN_HERE' # Note this isn't implemented in the template
        })
end

service 'syslog-ng' do
  supports status: true, start: true, stop: true, restart: true, reload: true
  action [:enable, :start]
end
