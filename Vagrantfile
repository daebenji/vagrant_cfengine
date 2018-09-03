Vagrant.configure("2") do |config|

  HUBIP="10.1.1.10"

  config.vm.box = "debian/stretch64"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network "private_network", ip: "#{HUBIP}"
  config.vm.network :forwarded_port, guest: 80, host: 8080
 # config.vm.provision :shell, path: "environment.sh"

  config.vm.provision "cfengine" do |cf|
    cf.am_policy_hub = true
    cf.files_path = "cfengine_files"
  end


  config.vm.provider :virtualbox do |vb|
    vb.name = "vagrant_cfengine"
  end

#  config.vm.define :cfhub do |hub_config|
#    hub_config.vm.host_name = "cfhub"
#    hub_config.vm.network = :hostonly, "#{HUBIP}"
#    hub_config.vm.forward_port = 80, 8080
#  end

end
