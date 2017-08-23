module Kata
  module Algorithms
    module Comparisons
      class HasDuplicateValue < Struct.new(:array)
        # returns the duplicate value if any in the array. If the array
        # does not have duplicate values, then it returns nil.
        # Performance of algorithm is O(N).
        #
        def duplicate_value
          return nil if array.nil? || array.empty? || array.size == 1

          occurrences = []

          i = 0
          while i < array.size
            if occurrences[array[i]].nil?
              occurrences[array[i]] = 1
            else
              return array[i]
            end

            i += 1
          end

          nil
        end
      end
    end
  end
end
