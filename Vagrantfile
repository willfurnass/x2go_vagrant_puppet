# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # Use a box with VirtualBox Guest Extensions and Puppet 4 pre-installed
  config.vm.box = 'puppetlabs/centos-7.2-64-puppet'

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  #config.ssh.port = 65022
  
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network 'private_network', ip: '192.168.33.10'

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder '../data', '/vagrant_data'

  config.vm.provider 'virtualbox' do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.gui = false
  
     # Customize the amount of memory on the VM:
     vb.memory = '1024'
  end

  config.vm.provision 'puppet' do |puppet|
      puppet.environment_path = "environments"
      puppet.environment = "test"
      puppet.options = '--verbose --debug'
  end
end
