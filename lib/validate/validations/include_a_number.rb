module Validations
  class IncludeANumber

    def initialize(str)
      @error = 'The string must include a number.'
      @str   = str
    end

    def check
      @str.gsub(/\d/, '') == @str ? @error : nil
    end
  end
end
