#
# Cookbook Name:: XQuartz
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{ataka_work}.each do |user|
  template "/Users/ataka_work/.Xresources" do
    owner user
    group "staff"
    mode 644
  end
end
