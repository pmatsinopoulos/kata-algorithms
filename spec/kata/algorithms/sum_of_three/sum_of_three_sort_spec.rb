require 'spec_helper'

require 'shared_examples'

describe Kata::Algorithms::SumOfThreeSort do
  describe '#find_three' do
    examples = Kata::Algorithms::SpecHelper::SumOfThree.read_examples_for_find_three
    examples.each do |exmpl|
      context "from #{exmpl['input']}" do
        it_behaves_like "method that finds three integers summing up to zero" do
          let(:example) { exmpl }
          let(:sum_of_three) { Kata::Algorithms::SumOfThreeSort.new(example['input'])}
        end
      end
    end
  end
end