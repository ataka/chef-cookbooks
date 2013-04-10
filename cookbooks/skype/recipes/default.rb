#
# Cookbook Name:: skype
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Skype" do
  app    "Skype_6.3.0.582"
  source "http://www.skype.com/go/getskype-macosx.dmg"
  action :install
end
