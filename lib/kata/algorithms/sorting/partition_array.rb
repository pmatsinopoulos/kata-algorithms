module Kata
  module Algorithms
    module Sorting
      class PartitionArray < Struct.new(:array)
        def partition
          if array.nil?
            return [nil, nil]
          elsif array.size == 2
            if array[0] > array[1]
              swap_values(0, 1)
              return [array, 0]
            else
              return [array, 1]
            end
          elsif array.size == 1
            return [array, 0]
          end

          pivot_pointer = array.size - 1
          left_pointer = 0
          right_pointer = array.size - 2
          while true
            while array[left_pointer] < array[pivot_pointer]
              left_pointer += 1
            end
            while array[right_pointer] > array[pivot_pointer]
              right_pointer -= 1
            end
            if left_pointer < right_pointer
              swap_values(left_pointer, right_pointer)
            else
              break
            end
          end
          swap_values(left_pointer, pivot_pointer)
          [array, left_pointer]
        end

        def swap_values(left, right)
          array[left], array[right] = array[right], array[left]
        end
      end
    end
  end
end
