require_relative "../test/cli/version"
require_relative "../test/cli/cli_class"
require_relative "../test/cli/api_class"
require_relative "../test/cli/character_class"

require 'pry'
require 'net/http'
require 'json'
  
  

module Test
  module Cli
    class Error < StandardError; end
    # Your code goes here...
  end
end
