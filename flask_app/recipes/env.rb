#
# Cookbook:: flask_app
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.


packages_to_install = [
  'uwsgi', 'python3-pip', 'nginx'
]

packages_to_install.each do |pkg|
  log 'installing by pkg ' + pkg
  apt_package pkg do
    action :install
  end
end

python_runtime "flask_app" do
  provider :system
	options package_name: 'python3.7', package_version:'3.7.2-1'
end

python_virtualenv "/opt/venv" do
  interpreter "python3.7.2"
  action :create
end

bash "run_install" do
  user "root"
  code <<-EOH
    cd /src/app
    pipenv install
  EOH
  action :run
end

