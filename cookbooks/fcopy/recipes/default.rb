#
# Cookbook Name:: fcopy
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/tmp/fcopy" do
  repository "git://github.com/ataka/fcopy.git"
  reference  "master"
  action :checkout
end

bash "install-fcopy" do
  install_dir='/usr/local/share/emacs/site-lisp'
  not_if {
    File.exists?("#{install_dir}/fcopy.el")
  }
  code <<-EOC
    install -m 664 /tmp/fcopy/fcopy.el #{install_dir}/
  EOC
end
