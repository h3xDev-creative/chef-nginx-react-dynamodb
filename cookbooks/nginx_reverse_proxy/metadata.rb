# metadata.rb

name 'nginx_reverse_proxy'
maintainer 'Your Name'
maintainer_email 'your.email@example.com'
license 'Apache-2.0'
description 'Installs and configures Nginx as a reverse proxy for a React app'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'

# Supported platforms
supports 'ubuntu', '>= 16.04'
supports 'centos', '>= 7.0'

# Dependencies
depends 'aws', '~> 9.0' # If you're managing DynamoDB via AWS SDK
depends 'nginx', '~> 10.0' # If you're using the official Nginx cookbook

# Issues URL (optional)
issues_url 'https://github.com/yourusername/chef-nginx-react/issues' if respond_to?(:issues_url)

# Source URL (optional)
source_url 'https://github.com/yourusername/chef-nginx-react' if respond_to?(:source_url)
