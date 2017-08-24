require 'spec_helper'

describe Kata::Algorithms::ArrayIntersection do
  [
      [[3, 1, 4, 2], [4, 5, 3, 6], [3, 4]],
      [[3, 1, 4, 2], [44, 54, 34, 64], []],
      [[3, 1, 64, 2], [44, 54, 34, 64], [64]],
  ].each do |a, b, intersection|
    outcome = intersection.nil? ? nil : intersection.sort
    it "when a is #{a} and b is #{b} then intersection is #{outcome}" do
      subject = described_class.new(a, b)
      result = subject.intersect
      expect(result.nil? ? nil : result.sort).to eq(outcome)
    end
  end
end
