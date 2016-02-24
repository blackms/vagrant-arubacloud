# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

%w{AC_USERNAME AC_PASSWORD}.each do |var|
  abort "Please set the environment variable #{var} in order to run the test" unless ENV.key? var
end

require 'securerandom'
rnd_string = SecureRandom.hex(2)

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "dummy"

  config.vm.define :centos do |centos|
    centos.ssh.username = 'root'
    centos.ssh.password = 'g1un71n5.l4m3n74'
    centos.vm.provider :arubacloud do |ac|
      ac.arubacloud_username = ENV['AC_USERNAME']
      ac.arubacloud_password = ENV['AC_PASSWORD']
      ac.admin_password = 'g1un71n5.l4m3n74'
      #ac.template_id = '415'
      ac.template_id = '9'
      #ac.package_id = 1
      ac.service_type = 2
      ac.server_name = "centos-#{rnd_string}"
      ac.cpu_number = 2
      ac.ram_qty = 4
      ac.hds = [{:type => 0, :size => 20}, {:type => 1, :size => 30}]
    end
  end

end
