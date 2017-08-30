require 'spec_helper'

describe Kata::Algorithms do
  describe '.find_non_existing_smallest_integer_number' do
    [
        [[1, 3, 6, 4, 1, 2], 5],
        [[], 1],
        [[2], 1],
        [[0], 1],
        [[-1, -3], 1],
        [[1, 2, 3], 4],
        [[1, 1, 1, 1, 1, 1, 1], 2],
    ].each do |input, output|
      it "when input #{input} then output is #{output}" do
        expect(described_class.find_non_existing_smallest_integer_number(input)).to eq(output)
      end
    end
  end
end
