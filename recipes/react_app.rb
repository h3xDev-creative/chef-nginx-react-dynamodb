# recipes/react_app.rb

# This recipe deploys the React app from a ZIP file to the server.

# Define the path to the React app's ZIP file and the deployment directory
react_app_zip = '../cookbooks/nginx_reverse_proxy/files/default/react-app.zip'
deploy_dir = '/var/www/react-app'

# Ensure the deployment directory exists
directory deploy_dir do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

# Copy the React app's ZIP file from the cookbook files to the server
cookbook_file react_app_zip do
  source 'react-app.zip'  # Refers to the file in cookbooks/nginx_reverse_proxy/files/default/
  mode '0644'
  action :create
end

# Unzip the React app files to the deployment directory
bash 'deploy_react_app' do
  cwd '/tmp'
  code <<-EOH
    unzip #{react_app_zip} -d #{deploy_dir}
  EOH
  not_if { ::File.exist?("#{deploy_dir}/index.html") }  # Avoid re-deploying if the app is already deployed
end

# Set the correct permissions on the deployed files
execute 'set_permissions' do
  command "chown -R www-data:www-data #{deploy_dir}"
end

log 'React app deployed successfully!' do
  level :info
end
