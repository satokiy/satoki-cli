require 'thor'
require 'dotenv'
require 'satoki_cli'
require_relative '../logo/pikachu'

module SatokiCli
  class Cli < Thor
    include Pikachu
    
    Dotenv.load
    default_command :hello

    desc 'hello', 'Output hello. This is default.'
    def hello
      puts 'Hello World!!'
    end

    desc 'pikachu', 'print pretty pikachu'
    def pikachu
      Pikachu.logo
    end

    desc 'nippo', 'Create daily report page on Scrapbox.'
    def nippo
      project = ENV['SCRAPBOX_PROJECT']
      title = Time.now.strftime('%Y/%-m/%-d')
      system "open https://scrapbox.io/#{project}/#{title}"
    end

  end
end