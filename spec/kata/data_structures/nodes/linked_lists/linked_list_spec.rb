require 'spec_helper'

describe Kata::DataStructures::Nodes::LinkedLists::LinkedList do
  subject(:linked_list) do
    first_node = Kata::DataStructures::Nodes::LinkedLists::Node.new(5)
    end_point = first_node

    new_node = Kata::DataStructures::Nodes::LinkedLists::Node.new(6)

    end_point.next_node = new_node
    end_point = end_point.next_node

    new_node = Kata::DataStructures::Nodes::LinkedLists::Node.new(7)

    end_point.next_node = new_node
    end_point = end_point.next_node

    described_class.new(first_node)
  end

  describe '#read' do
    context 'when index is 0' do
      let(:index) { 0 }
      it 'returns 5' do
        expect(linked_list.read(index)).to eq(5)
      end
    end

    context 'when index is 1' do
      let(:index) { 1 }
      it 'returns 6' do
        expect(linked_list.read(index)).to eq(6)
      end
    end

    context 'when index is 2' do
      let(:index) { 2 }
      it 'returns 7' do
        expect(linked_list.read(index)).to eq(7)
      end
    end

    context 'when index is 3' do
      let(:index) { 3 }
      it 'returns nil' do
        expect(linked_list.read(index)).to be_nil
      end
    end
  end

  describe '#index' do
    context 'when value is 5' do
      let(:value) { 5 }
      it 'returns 0' do
        expect(linked_list.index(value)).to eq(0)
      end
    end

    context 'when value is 6' do
      let(:value) { 6 }
      it 'returns 1' do
        expect(linked_list.index(value)).to eq(1)
      end
    end

    context 'when value is 7' do
      let(:value) { 7 }
      it 'returns 2' do
        expect(linked_list.index(value)).to eq(2)
      end
    end

    context 'when value is 8' do
      let(:value) { 8 }
      it 'returns -1' do
        expect(linked_list.index(value)).to eq(-1)
      end
    end
  end

  describe '#insert' do
    context 'when index is 0 and value is 4' do
      let(:index) { 0 }
      let(:value) { 4 }
      it 'places to correct position' do
        linked_list.insert(index, value)

        expect(linked_list.read(0)).to eq(4)
        expect(linked_list.read(1)).to eq(5)
        expect(linked_list.read(2)).to eq(6)
        expect(linked_list.read(3)).to eq(7)
        expect(linked_list.read(4)).to be_nil
      end
    end

    context 'when index is 1 and value is 4' do
      let(:index) { 1 }
      let(:value) { 4 }
      it 'places to correct position' do
        linked_list.insert(index, value)

        expect(linked_list.read(0)).to eq(5)
        expect(linked_list.read(1)).to eq(4)
        expect(linked_list.read(2)).to eq(6)
        expect(linked_list.read(3)).to eq(7)
        expect(linked_list.read(4)).to be_nil
      end
    end

    context 'when index is 2 and value is 4' do
      let(:index) { 2 }
      let(:value) { 4 }
      it 'places to correct position' do
        linked_list.insert(index, value)

        expect(linked_list.read(0)).to eq(5)
        expect(linked_list.read(1)).to eq(6)
        expect(linked_list.read(2)).to eq(4)
        expect(linked_list.read(3)).to eq(7)
        expect(linked_list.read(4)).to be_nil
      end
    end

    context 'when index is 3 and value is 4' do
      let(:index) { 3 } # add to the end of the list
      let(:value) { 4 }
      it 'places to correct position' do
        linked_list.insert(index, value)

        expect(linked_list.read(0)).to eq(5)
        expect(linked_list.read(1)).to eq(6)
        expect(linked_list.read(2)).to eq(7)
        expect(linked_list.read(3)).to eq(4)
        expect(linked_list.read(4)).to be_nil
      end
    end
  end

  describe '#delete' do
    context 'when index is 0' do
      let(:index) { 0 }
      it 'deletes the correct node' do
        linked_list.delete(index)

        expect(linked_list.read(0)).to eq(6)
        expect(linked_list.read(1)).to eq(7)
        expect(linked_list.read(2)).to be_nil
      end
    end

    context 'when index is 1' do
      let(:index) { 1 }
      it 'deletes the correct node' do
        linked_list.delete(index)

        expect(linked_list.read(0)).to eq(5)
        expect(linked_list.read(1)).to eq(7)
        expect(linked_list.read(2)).to be_nil
      end
    end

    context 'when index is 2' do
      let(:index) { 2 }
      it 'deletes the correct node' do
        linked_list.delete(index)

        expect(linked_list.read(0)).to eq(5)
        expect(linked_list.read(1)).to eq(6)
        expect(linked_list.read(2)).to be_nil
      end
    end
  end
end
