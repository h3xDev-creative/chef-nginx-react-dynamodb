# chef-repo.rb

# Configuration for Chef repository

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "your-node-name"
client_key               "#{current_dir}/.chef/your-node-name.pem"
validation_client_name   "your-org-validator"
validation_key           "#{current_dir}/.chef/your-org-validator.pem"
chef_server_url          "https://your-chef-server/organizations/your-org"
cache_type               'BasicFile'
cache_options( :path => "#{current_dir}/.chef/checksums" )
cookbook_path            ["#{current_dir}/cookbooks"]
