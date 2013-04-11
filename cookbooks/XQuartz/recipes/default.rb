#
# Cookbook Name:: XQuartz
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
users = node['XQuartz']['users']

users.each do |user|
  template "Users/#{user}/.Xresources" do
    owner user
    group "staff"
    mode 0664
  end
end
