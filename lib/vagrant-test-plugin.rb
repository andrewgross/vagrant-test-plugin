module VagrantTestPlugin
  class Plugin < Vagrant.plugin("2")
    name "Vagrant Test Plugin"

    command "free-memory" do
      require_relative "vagrant-test-plugin/command"
      Command
    end
  end
end
