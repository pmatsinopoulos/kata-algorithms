require 'spec_helper'

describe Kata::Algorithms::Sorting do
  subject {
    Kata::Algorithms::Sorting
  }
  context 'when nil array of integers' do
    let(:array_to_sort) { nil }
    it 'sorts the array' do
      expect(subject.insertion_sort(array_to_sort)).to be_nil
    end
  end
  context 'when empty array of integers' do
    let(:array_to_sort) { [] }
    it 'sorts the array' do
      expect(subject.insertion_sort(array_to_sort)).to be_empty
    end
  end
  context 'when array of integers with one element' do
    let(:array_to_sort) { [3] }
    it 'sorts the array' do
      expect(subject.insertion_sort(array_to_sort)).to eq(array_to_sort.sort)
    end
  end
  context 'when array of integers case 1' do
    let(:array_to_sort) { [5, 9, 3, 0, 15, 1, 2] }
    it 'sorts the array' do
      expect(subject.insertion_sort(array_to_sort)).to eq(array_to_sort.sort)
    end
  end
  context 'when array of integers case 2' do
    let(:array_to_sort) { [1, 1] }
    it 'sorts the array' do
      expect(subject.insertion_sort(array_to_sort)).to eq(array_to_sort.sort)
    end
  end
  context 'when array of integers case 3' do
    let(:array_to_sort) { [2, 1] }
    it 'sorts the array' do
      expect(subject.insertion_sort(array_to_sort)).to eq(array_to_sort.sort)
    end
  end
  context 'when array of integers case 4' do
    let(:array_to_sort) { [5, 4, 3, 2, 1] }
    it 'sorts the array' do
      expect(subject.insertion_sort(array_to_sort)).to eq(array_to_sort.sort)
    end
  end
  context 'when array of integers case 5' do
    let(:array_to_sort) { [5, 4, 3, 2, 1, 0, 1, 2, 3, 4] }
    it 'sorts the array' do
      expect(subject.insertion_sort(array_to_sort)).to eq(array_to_sort.sort)
    end
  end
end