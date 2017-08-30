require 'spec_helper'

describe Kata::Algorithms do
  describe '.perm_check' do
    # permutations of N integers is a set of all N integers
    # assume: N is an integer within the range [1..100,000]; Hence array.size >= 1 and array.size <= 100_000
    #         Hence, if N = 5, then array has 5 elements. They are the numbers 1, 2, 3, 4, 5 in any permutation.
    [
        [[4, 1, 3, 2], 1], # it is a permutation because all 4 elements exist once
        [[4, 1, 3], 0], # it is not a permutation because 2 is missing and it is 4 in its place
        [[4, 1, 3, 2, 5], 1], # it is a permutation
        [[1], 1],
        [[], 1]
    ].each do |input, output|
      it "when input #{input} then output #{output}" do
        expect(described_class.perm_check(input)).to eq(output)
      end
    end
  end
end
