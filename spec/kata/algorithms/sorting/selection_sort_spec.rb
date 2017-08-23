require 'spec_helper'

describe Kata::Algorithms::Sorting::SelectionSort do
  [
      [],
      nil,
      [1],
      [1, 2],
      [1, 2, 3],
      [2, 1],
      [2, 1, 3],
      [2, 1, 1],
      [2, 1, 2],
      [2, 1, -1],
      [2, 1, 0, 3, 2, 1],
      [1, 4, 8, 16, 32],
      [5, 4, 3, 2, 1],
      [10, 9, 8, 7, 6, 5, 4, 3, 2, 1],
      [20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1],
  ].each do |input|
    output = input.nil? ? nil : input.sort
    it "with array #{input} we return #{output}" do
      subject = described_class.new(input)
      expect(subject.sort).to eq(output)
    end
  end
end
