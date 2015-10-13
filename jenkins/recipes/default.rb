#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# setup up selinux
include_recipe 'selinux::permissive'

# use system package manager to install jdk
package 'java-1.7.0-openjdk' do
  action :install
end

# download file (jenkin rpm file )
remote_file '/tmp/' + node['jenkins']['rpm'] do
  source node['jenkins']['rpm_url']
  owner "root"
  group "root"
  mode "0755"
  not_if "test -e " + '/tmp/' + node['jenkins']['rpm']
end

# install jenkins from file
package "jenkins" do
  action :install
  source '/tmp/' + node['jenkins']['rpm']
  # assign package manager ( RPM )
  provider Chef::Provider::Package::Rpm
  not_if "rpm -q jenkins"
end

# enable jenkins serviec when systerm startup
service "jenkins" do
  action [:enable, :start]
end

# apply iptables rule by template file 
iptables_rule "http8080" do
  action :enable
end
