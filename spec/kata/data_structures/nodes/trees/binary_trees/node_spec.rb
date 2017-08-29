require 'spec_helper'

describe Kata::DataStructures::Nodes::Trees::BinaryTrees::Node do
  describe '#initialize' do
    it 'initializes a node' do
      node = described_class.new(5)

      expect(node.value).to eq(5)
      expect(node.left).to be_nil
      expect(node.right).to be_nil
    end

    it 'can be used to build a tree' do
      left_node = described_class.new(4)
      right_node = described_class.new(6)

      node = described_class.new(5, left_node, right_node)

      expect(node.value).to eq(5)
      expect(node.left).to eq(left_node)
      expect(node.right).to eq(right_node)
    end
  end

end
