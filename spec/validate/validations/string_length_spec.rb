require 'spec_helper'

describe 'Validations::StringLength' do
  describe 'check' do
    let(:valid_str)   { 'right-size-val' }
    let(:invalid_str) { 'too-short' }

    it 'returns nil if no error was found' do
      result = Validations::StringLength.new(valid_str).check
      expect(result).to be_nil
    end

    it 'returns an string with the error when input has it' do
      result = Validations::StringLength.new(invalid_str).check
      expect(result).to eq('The length of the string must be between 10 and 15 characters.')
    end
  end
end
