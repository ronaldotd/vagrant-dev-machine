Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.hostname = "ocelot"

  config.vm.provider "virtualbox" do |vbox|
    vbox.memory = 8192
    vbox.cpus = 2
  end
   
  config.vm.provision "docker"

  config.vm.provision :ansible do |ansible|
    ansible.compatibility_mode = "2.0"
    ansible.extra_vars = { ansible_python_interpreter: "/usr/bin/python3" }
    ansible.playbook = "./provisioning/playbook.yaml"
  end

end
