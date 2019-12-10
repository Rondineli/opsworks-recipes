#
# Cookbook:: flask_app
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.


packages_to_install = [
  'uwsgi', 'python3.7-minimal', 'python3.7-dev','python3-pip', 'nginx',
  'wget', 'vim'
]

packages_to_install.each do |pkg|
  log 'installing by pkg ' + pkg
  apt_package pkg do
    action :install
  end
end

bash "run_install" do
  user "root"
  cwd "/opt/aws_labs/app/flask/"
  code <<-EOH
    python3.7 -m pip install -U pip
    pip3.7 install -U pipenv
    pip3.7 install -U uwsgi
    PIPENV_VENV_IN_PROJECT=venv pipenv install
    chown -R www-data: .venv

  EOH
  action :run
end
