# frozen_string_literal:true

require 'byebug'

require_relative '../lib/digits_calculator'

RSpec.describe DigitsCalculator do 
  subject { described_class.call(parameter) }

  context 'when receiving "16"' do
    let(:parameter) { '16' }

    it { is_expected.to eq(7) }
  end 

  context 'when receiving "942"' do
    let(:parameter) { '942' }

    it { is_expected.to eq(6) }
  end 

  context 'when receiving "9999999"' do
    let(:parameter) { '9999999' }

    it { is_expected.to eq(9) }
  end 

  context 'when receiving a non-string parameter' do
    let(:parameter) { 16 }

    it do
      expect do
        expect_any_instance_of(Logger).to receive(:error)
        subject
      end.to raise_error(described_class::NonStringArgumentError, 'Non-String argument is not allowed')
    end
  end

  context 'when receiving a non-numeric string parameter' do
    let(:parameter) { 'non-numeric' }

    it do
      expect do
        expect_any_instance_of(Logger).to receive(:error)
        subject
      end.to raise_error(described_class::NonNumericArgumentError, 'Non-Numeric String argument is not allowed')
    end
  end
end
