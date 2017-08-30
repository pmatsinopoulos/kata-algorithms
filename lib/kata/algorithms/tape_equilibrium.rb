module Kata
  module Algorithms
    # N + N - 1 steps => 2N - 1 steps => O(N)
    #
    def self.tape_equilibrium(array)
      array_size = array.size
      left_sum = 0
      right_sum = array.reduce(:+) # N steps here
      diff = (left_sum - right_sum).abs
      minimum = diff
      i = 1
      while i < array_size # N-1 steps here
        left_sum += array[i - 1]
        right_sum -= array[i - 1]
        diff = (left_sum - right_sum).abs
        if diff < minimum
          minimum = diff
        end
        i += 1
      end
      minimum
    end
  end
end
