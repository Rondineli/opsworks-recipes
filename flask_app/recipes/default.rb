include_recipe 'flask_app::git'
include_recipe 'flask_app::env'
include_recipe 'flask_app::systems'
include_recipe 'flask_app::nginx'

service "flask_app" do
    action :stop
end

service "flask_app" do
	action :start
end
