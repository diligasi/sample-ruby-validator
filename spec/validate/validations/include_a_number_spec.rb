require 'spec_helper'

describe 'Validations::IncludeANumber' do
  describe 'check' do
    let(:valid_str)   { 'i have 1 number' }
    let(:invalid_str) { 'i do not have any' }

    it 'returns nil if no error was found' do
      result = Validations::IncludeANumber.new(valid_str).check
      expect(result).to be_nil
    end

    it 'returns an string with the error when input has it' do
      result = Validations::IncludeANumber.new(invalid_str).check
      expect(result).to eq('The string must include a number.')
    end
  end
end
