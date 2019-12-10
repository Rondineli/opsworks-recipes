template '/etc/nginx/conf.d/default.conf' do
  source 'default.erb'
  owner 'root'
  group 'root'
  mode 000755
end

template '/etc/nginx/sites-enabled/default' do
  source 'default.erb'
  owner 'root'
  group 'root'
  mode 000755
end

service "nginx" do
    action :stop
end

service "nginx" do
	action :start
end
