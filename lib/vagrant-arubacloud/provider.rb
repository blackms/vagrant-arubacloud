require 'vagrant'

module VagrantPlugins
  module ArubaCloud

    class Provider < Vagrant.plugin('2', :provider)
      def initialize(machine)
        @machine = machine
      end

      def action(name)
        return Actions.send(name) if Actions.respond_to?(name)

      end
    end

  end
end