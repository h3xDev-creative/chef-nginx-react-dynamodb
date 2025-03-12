# recipes/default.rb

# This recipe installs and configures Nginx as a reverse proxy for the React app.

include_recipe 'nginx_reverse_proxy::proxy'
include_recipe 'nginx_reverse_proxy::react_app'
include_recipe 'nginx_reverse_proxy::dynamodb'

log 'Nginx reverse proxy setup complete!' do
  level :info
end
