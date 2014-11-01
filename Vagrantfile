Vagrant::Config.run do |config|
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
  config.ssh.timeout = 300
  config.vm.define :ubuntuJava do |ubuntuJava|
    ubuntuJava.vm.box = "ubuntu/trusty64"
    ubuntuJava.vm.network :forward_port, host: 8080
    ubuntuJava.gui = true
    ubuntuJava.vm.customize [ "modifyvm", :id, "--memory", "1024"]
    ubuntuJava.vm.provision :puppet do |puppet|
      puppet.module_path = "modules"
      puppet.manifests_path = "manifests"
      puppet.manifest_file  = "ubuntuJava.pp"
    end
    ubuntuJava.vm.provision :shell, inline: 'sudo apt-get install git -y'
  end
end
