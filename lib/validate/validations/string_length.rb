module Validations
  class StringLength

    def initialize(str)
      @mim_size = 10
      @max_size = 15
      @error = "The length of the string must be between #{@mim_size} and #{@max_size} characters."
      @str   = str
    end

    def check
      @str.size < @mim_size || @str.size > @max_size ? @error : nil
    end
  end
end
