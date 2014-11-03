Vagrant.configure("2") do |config|
  config.vm.box = "trusty64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.synced_folder "<folder home>", "<folder vm>", type: "nfs", mount_options: ['rw', 'vers=3', 'tcp', 'fsc', 'actimeo=2']
  config.ssh.forward_agent = true
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--cpus", 4]
    # enable if the box is "hanging"
    #vb.gui = true
  end
  config.vm.provision "shell", path: "setup.sh"
end
