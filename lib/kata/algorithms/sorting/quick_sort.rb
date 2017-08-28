require_relative './partition_array'

module Kata
  module Algorithms
    module Sorting
      class QuickSort < Struct.new(:array)
        def sort
          # require 'pry-byebug'; binding.pry
          return array if array.size == 0 || array.size == 1

          partition_array = Kata::Algorithms::Sorting::PartitionArray.new(array)
          partitioned_array, pivot_position = partition_array.partition
          Kata::Algorithms::Sorting::QuickSort.new(partitioned_array[0, pivot_position]).sort +
              [partitioned_array[pivot_position]] +
          Kata::Algorithms::Sorting::QuickSort.new(partitioned_array[pivot_position + 1..-1]).sort
        end
      end
    end
  end
end
