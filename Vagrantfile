VAGRANT_COMMAND = ARGV[0]

Vagrant.configure("2") do |config|
  if VAGRANT_COMMAND == "ssh"
    config.ssh.username = "ronaldotd"
    config.ssh.private_key_path = "~/.ssh/id_rsa"
  end

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
