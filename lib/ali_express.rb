require "ali_express/version"

module AliExpress
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end

require_relative 'ali_express/configuration'
require_relative 'ali_express/request'
