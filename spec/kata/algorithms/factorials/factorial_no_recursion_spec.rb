require 'spec_helper'

describe Kata::Algorithms::Factorials::FactorialNoRecursion do
  [
      [1, 1],
      [2, 2],
      [3, 6],
      [4, 24],
      [5, 120],
  ].each do |input, output|
    it "When #{input} then factorial is #{output}" do
      subject = described_class.new(input)
      expect(subject.factorial).to eq(output)
    end
  end
end
