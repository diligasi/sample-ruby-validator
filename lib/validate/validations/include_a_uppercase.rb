module Validations
  class IncludeAUppercase

    def initialize(str)
      @error = 'The input must include an uppercase character.'
      @str   = str
    end

    def check
      !@str.match(/[A-Z]/) ? @error : nil
    end
  end
end
