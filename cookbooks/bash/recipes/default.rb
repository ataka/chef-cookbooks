#
# Cookbook Name:: bash
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
users = node['bash']['users']

users.each do |user|
  template "Users/#{user}/.profile" do
    owner user
    group "staff"
    mode 0664
  end
end
