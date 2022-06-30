require 'validate/string'

module Validate

  def self.string(str)
    Validate::String.new(str).validate
  end
end
