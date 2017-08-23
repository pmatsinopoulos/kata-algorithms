module Kata
  module Algorithms
    module Sorting
      class BubbleSort < Struct.new(:array)
        def sort
          return nil if array.nil?
          return [] if array.empty?
          return array if array.size == 1

          unsorted_until_index = array.size - 1
          sorted = false
          until sorted
            sorted = true
            i = 0
            while i <= unsorted_until_index - 1
              if array[i] > array[i + 1]
                sorted = false
                array[i], array[i + 1] = array[i + 1], array[i]
              end
              i += 1
            end
            unsorted_until_index -= 1
          end
          array
        end
      end
    end
  end
end
