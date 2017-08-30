require 'spec_helper'

describe Kata::Algorithms do
  [
      [[3, 1, 2, 4, 3], 1],
      [[3, 3], 0],
      [[-3, -3], 0],
      [[3, 1], 2],
      [[3, 0], 3],
      [[-1, 1], 0],
      [[-1000, -999], 1],
      [[0, 1, 2, 3], 0],
  ].each do |input, output|
    it "when input #{input} then output #{output}" do
      expect(described_class.tape_equilibrium(input)).to eq(output)
    end
  end
end
