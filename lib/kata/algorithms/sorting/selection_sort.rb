module Kata
  module Algorithms
    module Sorting
      class SelectionSort < Struct.new(:array)
        # O(N^2/2) => O(N^2)
        def sort
          return nil if array.nil?
          return [] if array.empty?
          return array if array.size == 1

          # for a given element i it compares it to every element from i + 1 up to N
          # if it is bigger than the next elements I might even do N - (i + 1) swaps
          # For the first element N-1 comparisons and if it is not the minimum, then 1 swap
          # For the second element N-2 comparisons and if it is not the minimum, then 1 swap
          # For the third element N-3 comparisons and if it is not the minimum, then 1 swap
          # For the Nth element 0 comparisons
          # N-1 + N-2 + N-3 + ....+ 2 + 1
          # N = 5 => 4 + 3 + 2 + 1 = 10 comparisons approximately: 5^2/2
          # N = 10 => 9 + 8 + 7 + 6 + 5 + C(5) = 45 comparisons approximately:  10^2 / 2
          # N = 20 => 20 + 19 + 18 + 17 + 16 + 15 + 14 + 13 + 12 + 11 + 10 + C(10) = 190 comparisons approximately 20^2/2

          unsorted_lower_index = 0
          minimum_index = unsorted_lower_index
          i = minimum_index

          while unsorted_lower_index < array.size

            while i < array.size
              if array[i] < array[minimum_index]
                minimum_index = i
              end
              i += 1
            end

            array[unsorted_lower_index], array[minimum_index] = array[minimum_index], array[unsorted_lower_index] if minimum_index > unsorted_lower_index

            unsorted_lower_index += 1
            minimum_index = unsorted_lower_index
            i = minimum_index
          end

          array
        end
      end
    end
  end
end
