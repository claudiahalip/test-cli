require_relative "../test/cli/version"
require_relative "../test/cli/cli_class"
require_relative "../test/cli/api_class"
require_relative "../test/cli/character_class"
require_relative "../test/cli/quote_class"


require 'pry'
require 'net/http'
require 'json'
  
#require 'bundler/setup'  
#Bundler.require(:cli)

module Test
  module Cli
    class Error < StandardError; end
    # Your code goes here...
  end
end
