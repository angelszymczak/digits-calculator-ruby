# frozen_string_literal:true

require_relative '../lib/digits_calculator'

RSpec.describe DigitsCalculator do 
  subject { described_class.call(parameter) }

  context 'when receiving 16' do
    let(:parameter) { '16' }

    it { is_expected.to eq(7) }
  end 
end
