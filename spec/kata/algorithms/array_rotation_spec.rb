require 'spec_helper'

describe Kata::Algorithms do
  describe '.rotate_array' do
    [
        [[1, 2, 3], 2, [2, 3, 1]],
        [[3, 8, 9, 7, 6], 1, [6, 3, 8, 9, 7]],
        [[3, 8, 9, 7, 6], 3, [9, 7, 6, 3, 8]],
        [[3], 0, [3]],
        [[3], 1, [3]],
        [[3], 2, [3]],
        [[3], 3, [3]],
        [[3], 4, [3]],
        [[3], 5, [3]],
        [[], 5, []],
    ].each do |array, k, output|
      it "when array #{array} and k #{k} then output is #{output}" do
        expect(described_class.rotate_array(array, k)).to eq(output)
      end
    end
  end
end
