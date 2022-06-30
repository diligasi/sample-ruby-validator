require 'validate/string_validator_error'
require 'validate/validations/check'

module Validate
  class String

    def initialize(str)
      @str = str
    end

    def validate
      errors = Validations::Check.call(@str)

      raise StringValidatorError, errors if errors.size > 0

      puts "#{@str} is valid!"
    end
  end
end
