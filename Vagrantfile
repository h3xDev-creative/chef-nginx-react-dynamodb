# Vagrantfile: Sets up a VM for local testing of Chef-managed Nginx reverse proxy
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"  # Ubuntu 18.04 LTS (change if needed)
  config.vm.hostname = "chef-nginx-vm"
  config.vm.network "private_network", type: "dhcp"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"  # Adjust RAM as needed
    vb.cpus = 2
  end

  # Provision the VM using Chef
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "nginx_reverse_proxy::default"
    chef.add_recipe "nginx_reverse_proxy::proxy"
    chef.add_recipe "nginx_reverse_proxy::react_app"
  end

  # Sync React app folder to the VM
  config.vm.synced_folder "./react-example-app", "/var/www/react-app"
end
