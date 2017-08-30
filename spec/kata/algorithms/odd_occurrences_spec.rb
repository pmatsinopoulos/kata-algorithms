require 'spec_helper'

describe Kata::Algorithms do
  describe '.odd_occurrences' do
    [
        [[9, 3, 9, 3, 9, 7, 9], 7],
        [[9, 3, 9, 8, 3, 9, 7, 9, 7], 8],
        [[7], 7],
    ].each do |input, output|
      it "when input is #{input} then output is #{output}" do
        expect(described_class.odd_occurrences(input)).to eq(output)
      end
    end
  end
end
