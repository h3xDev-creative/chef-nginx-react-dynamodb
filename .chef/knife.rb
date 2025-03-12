# .chef/knife.rb

# Chef server URL
chef_server_url "https://chefserver.example.com/organizations/my_org"

# Path to your Chef repository
cookbook_path ["#{current_dir}/../cookbooks"]

# Path to your environment files
environment_path "#{current_dir}/../environments"

# Path to your roles files
role_path "#{current_dir}/../roles"

# Path to your data bags
data_bag_path "#{current_dir}/../data_bags"

# SSL verification (if needed)
ssl_verify_mode :verify_none

# Knife configuration for working with AWS (optional, can be customized)
knife[:aws_access_key_id] = "YOUR_AWS_ACCESS_KEY"
knife[:aws_secret_access_key] = "YOUR_AWS_SECRET_ACCESS_KEY"
knife[:region] = "us-west-2"

# For using SSH when connecting to nodes (optional)
knife[:ssh_user] = "ubuntu"
knife[:identity_file] = "/path/to/your/private/key.pem"

# Chef environment default
knife[:environment] = "staging"
