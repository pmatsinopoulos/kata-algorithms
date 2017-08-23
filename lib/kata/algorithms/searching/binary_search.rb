# The input array should be sorted. This is when we use binary search. It is much faster than the linear search.
module Kata
  module Algorithms
    module Searching
      class BinarySearch < Struct.new(:array, :value_to_search_for)
        def search
          return nil if array.nil? || array.empty? || value_to_search_for.nil?
          result = nil
          i = 0
          j = array.size - 1
          while i <= j
            m = (i + j) / 2
            if array[m] == value_to_search_for
              return m
            elsif array[m] > value_to_search_for
              j = m - 1
            elsif array[m] < value_to_search_for
              i = m + 1
            end
          end
          result
        end
      end
    end
  end
end
