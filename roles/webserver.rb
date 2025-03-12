# roles/webserver.rb

name 'web_server'
description 'Role for setting up a web server with Nginx reverse proxy'
run_list(
  'recipe[nginx_reverse_proxy::default]',  # Install and configure Nginx
  'recipe[nginx_reverse_proxy::proxy]',    # Set up Nginx as a reverse proxy
  'recipe[nginx_reverse_proxy::react_app]' # Deploy React app
)

# Optional: Define attributes specific to the web server role
override_attributes(
  'nginx' => {
    'server_name' => 'webserver.example.com',  # Replace with your domain
    'react_app_root' => '/var/www/react-app'   # Path to React app's build directory
  },
  'dynamodb' => {
    'endpoint' => 'https://dynamodb.us-west-2.amazonaws.com',  # Your DynamoDB endpoint
    'table_name' => 'react-app-data'                          # Replace with your table name
  }
)
