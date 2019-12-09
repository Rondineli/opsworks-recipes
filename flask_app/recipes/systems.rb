template '/etc/systemd/system/flask_app.service' do
  source 'flask_app.service.erb'
  owner 'root'
  group 'root'
end

service "flask_app" do
	action :stop
end

service "flask_app" do
    action :start
end
