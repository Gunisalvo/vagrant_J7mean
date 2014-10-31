Vagrant::Config.run do |config|
  config.vm.define :ubuntuJava do |ubuntuJava|
    ubuntuJava.vm.box = "hashicorp/precise64"
    ubuntuJava.vm.customize [ "modifyvm", :id, "--memory", "1024"]
    ubuntuJava.vm.provision :puppet do |puppet|
      puppet.module_path = "modules"
      puppet.manifests_path = "manifests"
      puppet.manifest_file  = "ubuntuJava.pp"
    end
    ubuntuJava.vm.provision :shell, inline: 'sudo apt-get install git -y'
  end
end
