# recipes/proxy.rb

# This recipe sets up Nginx as a reverse proxy for the React app.

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

# Create the Nginx reverse proxy configuration using a template
template '/etc/nginx/sites-available/default' do
  source 'nginx.conf.erb' # Points to the ERB template file
  notifies :reload, 'service[nginx]', :delayed
end

# Create a symbolic link to enable the site
link '/etc/nginx/sites-enabled/default' do
  to '/etc/nginx/sites-available/default'
  notifies :reload, 'service[nginx]', :delayed
end
