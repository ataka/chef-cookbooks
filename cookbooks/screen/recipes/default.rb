#
# Cookbook Name:: screen
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
users = node['screen']['users']

users.each do |user|
  template "Users/#{user}/.screenrc" do
    owner user
    group "staff"
    mode 0664
  end
end
