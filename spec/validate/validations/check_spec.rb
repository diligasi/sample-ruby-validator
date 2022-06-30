require 'spec_helper'

describe 'Validations::Check' do
  describe 'call' do
    let(:invalid) { '' }
    let(:valid)   { '0123456789A' }

    it 'returns an empty array when valid input' do
      result = Validations::Check.call(valid)
      expect(result).to be_an_instance_of(Array)
      expect(result.size).to eq(0)
    end

    it 'returns a string array when input not valid' do
      result = Validations::Check.call(invalid)
      expect(result).to be_an_instance_of(Array)
      expect(result.size).not_to eq(0)
    end
  end
end
