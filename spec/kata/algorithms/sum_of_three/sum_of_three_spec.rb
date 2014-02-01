require 'spec_helper'

describe Kata::Algorithms::SumOfThree do
  describe '#find_three' do
    subject { Kata::Algorithms::SumOfThree.new([]) }
    it { expect { subject.find_three }.to raise_error(NotImplementedError) }
  end
end