require 'spec_helper'
require 'validate'

describe 'Validate' do
  describe 'string' do
    let(:valid_input)   { '123456789A' }
    let(:invalid_input) { 'wrong' }

    it 'returns valid message for valid input' do
      expect do
        Validate.string(valid_input)
      end.to output("#{valid_input} is valid!\n").to_stdout
    end

    it 'raises StringValidatorError' do
      expect { Validate.string(invalid_input) }.to raise_error(StringValidatorError)
    end
  end
end
