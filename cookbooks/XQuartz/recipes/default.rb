#
# Cookbook Name:: XQuartz
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "/Users/ataka-work/.Xresources" do
  source ".Xresources.erb"
  mode 644
end