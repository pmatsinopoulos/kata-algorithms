# This assumes that the given array is sorted and uses linear search to locate a particular value.
module Kata
  module Algorithms
    module Searching
      class LinearSearchOnOrderedArray < Struct.new(:ordered_array, :value_to_search_for)
        def search
          return nil if ordered_array.nil? || value_to_search_for.nil?
          result = nil
          ordered_array.each_with_index do |element, index|
            if element == value_to_search_for
              result = index
            elsif element > value_to_search_for
              break
            end
          end
          result
        end
      end
    end
  end
end
