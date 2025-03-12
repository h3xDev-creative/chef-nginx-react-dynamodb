# attributes/default.rb

# Nginx server configuration
default['nginx']['server_name'] = 'localhost'  # Replace with your server name or IP
default['nginx']['react_app_root'] = '/var/www/react-app'  # Path to your React app's build directory

# DynamoDB settings (for the React app)
default['dynamodb']['endpoint'] = 'https://dynamodb.us-west-2.amazonaws.com'  # Replace with your DynamoDB endpoint
default['dynamodb']['table_name'] = 'react-app-data'  # Replace with your DynamoDB table name
