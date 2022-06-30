require 'spec_helper'

describe 'Validations::IncludeAUppercase' do
  describe 'check' do
    let(:valid_str)   { 'i have a Capitalized char' }
    let(:invalid_str) { 'i do not have a capitalized char' }

    it 'returns nil if no error was found' do
      result = Validations::IncludeAUppercase.new(valid_str).check
      expect(result).to be_nil
    end

    it 'returns an string with the error when input has it' do
      result = Validations::IncludeAUppercase.new(invalid_str).check
      expect(result).to eq('The input must include an uppercase character.')
    end
  end
end
