require 'spec_helper'

describe 'Validate::String' do
  describe 'validate' do
    let(:valid_input)   { '123456789A' }
    let(:invalid_input) { 'wrong' }

    it 'returns valid message for valid input' do
      expect do
        Validate::String.new(valid_input).validate
      end.to output("#{valid_input} is valid!\n").to_stdout
    end

    it 'raises StringValidatorError' do
      expect { Validate::String.new(invalid_input).validate }.to raise_error(StringValidatorError)
    end
  end
end
