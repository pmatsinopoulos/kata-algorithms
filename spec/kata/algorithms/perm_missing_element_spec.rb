require 'spec_helper'

describe Kata::Algorithms do
  describe '.perm_missing_element' do
    [
        [[1, 2, 4], 3],
        [[2, 3, 1, 5], 4],
        [[1, 3], 2],
        [[1], 2],
        [[2], 1],
        [[2, 3], 1],
        [[1, 2, 3], 4],
        [[], 1],
    ].each do |input, output|
      it "when input #{input} then output #{output}" do
        expect(described_class.perm_missing_element(input)).to eq(output)
      end
    end
  end
end
