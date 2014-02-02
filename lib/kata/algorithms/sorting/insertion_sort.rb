module Kata
  module Algorithms
    module Sorting
      class InsertionSort < Struct.new(:array_to_sort)
        def sort
          return array_to_sort if array_to_sort.nil? || array_to_sort.size == 0 || array_to_sort.size == 1
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