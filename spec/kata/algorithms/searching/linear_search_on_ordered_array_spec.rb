require 'spec_helper'

describe Kata::Algorithms::Searching::LinearSearchOnOrderedArray do
  [
      [[1, 2, 3], 2, 1],
      [[1, 2, 3], 5, nil],
      [[1, 2, 3], 1, 0],
      [[1, 2, 3], 3, 2],
      [[1, 2, 3], -1, nil],
      [[1, 20, 30], 10, nil],
      [[1, 20, 30], 25, nil],
      [[1, 20, 30], 30, 2],
      [[1, 20, 30], 1, 0],
      [[1, 2, 3], nil, nil],
      [[], 5, nil],
      [nil, 5, nil],
  ].each do |ordered_array, value_to_search_for, output|
    it "when array: #{ordered_array} with value to search for: #{value_to_search_for}, we get #{output}" do
      subject = Kata::Algorithms::Searching::LinearSearchOnOrderedArray.new(ordered_array, value_to_search_for)
      expect(subject.search).to eq(output)
    end
  end
end
