require 'spec_helper'

describe Kata::Algorithms::Comparisons::HasDuplicateValue do
  [
      [[1, 2, 2], 2],
      [[1, 2, 1], 1],
      [[1, 2, 3], nil],
  ].each do |input, output|
    it "when input is #{input}, then output is #{output}" do
      subject = described_class.new(input)
      expect(subject.duplicate_value).to eq(output)
    end
  end
end
