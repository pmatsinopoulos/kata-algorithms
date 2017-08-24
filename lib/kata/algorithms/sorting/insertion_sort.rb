module Kata
  module Algorithms
    module Sorting
      class InsertionSort < Struct.new(:array_to_sort)
        def sort
          return array_to_sort if array_to_sort.nil? || array_to_sort.size == 0 || array_to_sort.size == 1
          # for i = 1, 1 push right, 1 set value
          # for i = 2, 2 push rights, 1 set value
          # for i = 3, 3 push rights, 1 set value
          # for i = 4, 4 push rights, 1 set value
          #...
          # for i = N, N push rights, 1 set value
          #   N + N-1 + N-2 + ... + 3 + 2 + 1
          # for N = 5 => 5 + 4 + 3 + 2 + 1 =          15 steps
          # for N = 10 => 10 + 9 + 8 + 7 + 6 + S(5) = 55 steps
          # for N = 20 => 20 + 19 ... + 11 + S(10) =  210 steps
          # O(N^2 / 2) => O(N^2)
          #
          i = 1
          while i < array_to_sort.size
            value = array_to_sort[i]
            j = i - 1
            while j >= 0 && array_to_sort[j] >= value
              array_to_sort[j + 1] = array_to_sort[j]
              j -= 1
            end
            array_to_sort[j+1] = value
            i += 1
          end
          array_to_sort
        end
      end
    end
  end
end
