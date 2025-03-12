# recipes/dynamodb.rb

# This recipe configures the DynamoDB connection for the React app.

# Define DynamoDB settings
dynamodb_endpoint = 'https://dynamodb.us-west-2.amazonaws.com'  # Replace with your DynamoDB endpoint
dynamodb_table_name = 'react-app-data'  # Replace with your DynamoDB table name

# Install AWS SDK for Ruby
gem_package 'aws-sdk-dynamodb' do
  action :install
end

# Configure DynamoDB connection in the environment
bash 'configure_dynamodb' do
  code <<-EOH
    export AWS_REGION=us-west-2  # Update to your AWS region
    export DYNAMODB_ENDPOINT=#{dynamodb_endpoint}
    export DYNAMODB_TABLE_NAME=#{dynamodb_table_name}
  EOH
  not_if { ::File.exist?('/etc/environment') }  # Avoid reconfiguring if already set
end

# Ensure the environment variables are set correctly for DynamoDB access
file '/etc/environment' do
  content <<-EOH
    AWS_REGION=us-west-2
    DYNAMODB_ENDPOINT=#{dynamodb_endpoint}
    DYNAMODB_TABLE_NAME=#{dynamodb_table_name}
  EOH
  mode '0644'
  owner 'root'
  group 'root'
end

log 'DynamoDB configuration complete!' do
  level :info
end
