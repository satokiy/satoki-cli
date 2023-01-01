require 'thor'
require 'satoki_cli'

module SatokiCli
  class Cli < Thor
    default_command :hello

    desc 'hello', 'Output hello. This is default.'
    def hello
      puts 'Hello World!!'
    end

  end
end