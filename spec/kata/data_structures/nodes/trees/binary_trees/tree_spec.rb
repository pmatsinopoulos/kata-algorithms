require 'spec_helper'

describe Kata::DataStructures::Nodes::Trees::BinaryTrees::Tree do
  subject(:binary_tree) do
    #           5
    #           /\
    #          /  \
    #         /    \
    #        /      \
    #       4       6
    #      / \     / \
    #     3  4.5 5.5  7
    left_node = Kata::DataStructures::Nodes::Trees::BinaryTrees::Node.new(4, Kata::DataStructures::Nodes::Trees::BinaryTrees::Node.new(3), Kata::DataStructures::Nodes::Trees::BinaryTrees::Node.new(4.5))
    right_node = Kata::DataStructures::Nodes::Trees::BinaryTrees::Node.new(6, Kata::DataStructures::Nodes::Trees::BinaryTrees::Node.new(5.5), Kata::DataStructures::Nodes::Trees::BinaryTrees::Node.new(7))

    root_node = Kata::DataStructures::Nodes::Trees::BinaryTrees::Node.new(5, left_node, right_node)
    described_class.new(root_node)
  end

  describe '#search' do
    context 'when value 5' do
      let(:value) { 5 }
      it 'returns root node' do
        expect(binary_tree.search(value).value).to eq(value)
      end
    end

    context 'when value 4' do
      let(:value) { 4 }
      it 'returns node with 4' do
        expect(binary_tree.search(value).value).to eq(value)
      end
    end

    context 'when value 3' do
      let(:value) { 3 }
      it 'returns node with 3' do
        expect(binary_tree.search(value).value).to eq(value)
      end
    end

    context 'when value 4.5' do
      let(:value) { 4.5 }
      it 'returns node with 4.5' do
        expect(binary_tree.search(value).value).to eq(value)
      end
    end

    context 'when value 6' do
      let(:value) { 6 }
      it 'returns node with 6' do
        expect(binary_tree.search(value).value).to eq(value)
      end
    end

    context 'when value 5.5' do
      let(:value) { 5.5 }
      it 'returns node with 5.5' do
        expect(binary_tree.search(value).value).to eq(value)
      end
    end

    context 'when value 7' do
      let(:value) { 7 }
      it 'returns node with 7' do
        expect(binary_tree.search(value).value).to eq(value)
      end
    end

    context 'when value 0' do
      let(:value) { 0 }
      it 'returns nil' do
        expect(binary_tree.search(value)).to be_nil
      end
    end
  end

  describe '#search_recursive' do
    context 'when value 5' do
      let(:value) { 5 }
      it 'returns root node' do
        expect(binary_tree.search_recursive(value).value).to eq(value)
      end
    end

    context 'when value 4' do
      let(:value) { 4 }
      it 'returns node with 4' do
        expect(binary_tree.search_recursive(value).value).to eq(value)
      end
    end

    context 'when value 3' do
      let(:value) { 3 }
      it 'returns node with 3' do
        expect(binary_tree.search_recursive(value).value).to eq(value)
      end
    end

    context 'when value 4.5' do
      let(:value) { 4.5 }
      it 'returns node with 4.5' do
        expect(binary_tree.search_recursive(value).value).to eq(value)
      end
    end

    context 'when value 6' do
      let(:value) { 6 }
      it 'returns node with 6' do
        expect(binary_tree.search_recursive(value).value).to eq(value)
      end
    end

    context 'when value 5.5' do
      let(:value) { 5.5 }
      it 'returns node with 5.5' do
        expect(binary_tree.search_recursive(value).value).to eq(value)
      end
    end

    context 'when value 7' do
      let(:value) { 7 }
      it 'returns node with 7' do
        expect(binary_tree.search_recursive(value).value).to eq(value)
      end
    end

    context 'when value 0' do
      let(:value) { 0 }
      it 'returns nil' do
        expect(binary_tree.search_recursive(value)).to be_nil
      end
    end
  end
end