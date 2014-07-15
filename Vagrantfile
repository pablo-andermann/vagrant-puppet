Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.network :forwarded_port, host: 8000, guest: 80
  config.vm.network :forwarded_port, host: 8443, guest: 443

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.module_path = 'puppet/modules'
    puppet.manifest_file = 'init.pp'
  end
end

