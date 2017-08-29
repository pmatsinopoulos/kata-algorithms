require 'spec_helper'

describe Kata::Algorithms::Sorting::PartitionArray do
  [
      [[0, 5, 2, 1, 6, 3], [0, 1, 2, 3, 6, 5], 3],
      [[0, 5], [0, 5], 1],
      [[0], [0], 0],
      [[0, 4, 8, 9, 2, 4, 1, 9], [0, 4, 8, 1, 2, 4, 9, 9], 6],
      [[1, 2, 3], [1, 2, 3], 2],
      [[1, 2], [1, 2], 1],
      [[2, 1], [1, 2], 0],
      [[0, 50, 20, 10, 60, 30], [0, 10, 20, 30, 60, 50], 3],
      [[60, 50], [50, 60], 0]
  ].each do |input, output, pivot_position|
    it "when #{input}, then we expect #{output} and pivote position: #{pivot_position}" do
      subject = described_class.new input
      expect(subject.partition).to eq([output, pivot_position])
    end
  end
end
