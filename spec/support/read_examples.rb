require 'json'

module Kata
  module Algorithms
    module SpecHelper
      module SumOfThree
        def self.read_examples(file_name)
          file = File.read(file_name)
          JSON.parse(file)['examples']
        end

        def self.read_examples_for_find_three
          Kata::Algorithms::SpecHelper::SumOfThree.read_examples(File.join(ROOT, 'spec', 'example_data', 'examples.json'))
        end
      end
    end
  end
end