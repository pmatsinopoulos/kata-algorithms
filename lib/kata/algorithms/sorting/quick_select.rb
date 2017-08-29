require_relative 'partition_array'

module Kata
  module Algorithms
    module Sorting
      class QuickSelect < Struct.new(:array, :kth_lowest)
        def select
          if array.size == 1
            array[0]
          end

          partition_array = Kata::Algorithms::Sorting::PartitionArray.new(array)
          partitioned_array, pivot_position = partition_array.partition

          if (kth_lowest - 1) == pivot_position
            partitioned_array[pivot_position]
          elsif (kth_lowest - 1) < pivot_position
            Kata::Algorithms::Sorting::QuickSelect.new(partitioned_array[0, pivot_position], kth_lowest).select
          else
            Kata::Algorithms::Sorting::QuickSelect.new(partitioned_array[pivot_position + 1..-1], (kth_lowest - 1) - pivot_position).select
          end
        end
      end
    end
  end
end
