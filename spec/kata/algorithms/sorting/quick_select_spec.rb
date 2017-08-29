require 'spec_helper'

describe Kata::Algorithms::Sorting::QuickSelect do
  [
      [[0, 50, 20, 10, 60, 30], 1,  0],
      [[0, 50, 20, 10, 60, 30], 2, 10],
      [[0, 50, 20, 10, 60, 30], 3, 20],
      [[0, 50, 20, 10, 60, 30], 4, 30],
      [[0, 50, 20, 10, 60, 30], 5, 50],
      [[0, 50, 20, 10, 60, 30], 6, 60],
  ].each do |array, kth_lowest, result|
    it "when array is #{array} and kth_lowest is #{kth_lowest} then result should be #{result}" do
      subject = described_class.new(array, kth_lowest)
      expect(subject.select).to eq(result)
    end
  end
end
