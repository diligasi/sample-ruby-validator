Dir["#{File.dirname(__FILE__)}/**/*.rb"].each do |file|
  require file
end

module Validations
  class Check

    def self.call(str)
      ObjectSpace.each_object(Class).filter { |k| k.name =~ /Validations::.+/ }.map do |k|
        next if k.name == 'Validations::Check'

        k.new(str).check
      end.compact
    end
  end
end
