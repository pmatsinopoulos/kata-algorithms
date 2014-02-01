require 'sum_of_three'

module Kata
  module Algorithms
    class SumOfThreeHash < Kata::Algorithms::SumOfThree
      attr_accessor :integer_positions

      def initialize(array_of_integers)
        super
        self.integer_positions = build_hash(array_of_integers)
      end

      # Tries to find 3 integers that sum up to 0.
      # In other words given an array a, we want to find
      # the 3 integers that satisfy the equation:
      #
      #    a[i] + a[j] + a[k] == 0
      #
      # where i != j && i != k && j !=k
      #
      # This equation can be equally written:
      #
      #   a[i] == - a[j] - a[k]
      #
      # Hence, we are looking for pairs of integers in
      # a, let's say a[j] and a[k], that their (- a[j] - a[k]) is
      # another integer in the array.
      #
      # The algorithm will use a hash to store the integers
      # of the array and their position. Then it will iterate
      # all the pairs j, k and will try to see whether their (-a[j]-a[k])
      # is in the hash and in which position.
      # One might say, why do we keep an array of positions of each integer and
      # not just keep a true/false flag to indicate that the result exists in the
      # hash. This is done to avoid cases in which (-a[j]-a[k]) == a[j] or (-a[j]-a[k]) == a[k]
      # For example, if the initial array is [-4, 8, 5], then if we just build the hash
      # h = {-4 => true, 8 => true, 5 => true}, for j == 0 and k == 1, the (-a[j]-a[k]) == (+4-8) == -4
      # and -4 exists in the hash and we falsely get the result -4, -8, -4.
      # If we know that -4 => [0] we can see that 0 is == j and does not count as a valid
      # found position.
      #
      # Note that this algorithm average and worst case performance is O(n^2)
      # Note also that seaching in a hash entry to find a position that is different from j, k at hand
      # is now done with Array#index, which does linear search. If the initial array has a lot of duplicates the search might take long.
      #
      def find_three
        j = 0
        size_of_array = array_of_integers.size
        while j < size_of_array
          k = j + 1
          while k < size_of_array
            i = - array_of_integers[j] - array_of_integers[k]
            hash_entry = integer_positions[i]
            # there has to be at least one integer position in the hash_entry which is not j or k
            return [array_of_integers[j], array_of_integers[k], i] unless hash_entry.nil? || hash_entry.index {|item| ![j, k].include?(item)}.nil?
            k += 1
          end
          j += 1
        end
        []
      end

      private

      # Needs to take the input array and create a hash with the
      # positions an integer is found. So, for the array
      #
      #    array_of_integers = [3, 2, 8, 3]
      #
      # it will create the hash
      #
      #    integer_positions = {3 => [0, 3], 2 => [1], 8 => [2]}
      #
      def build_hash(array_of_integers)
        integer_positions = {}
        array_of_integers.each_with_index do |i, index|
          integer_positions[i] = [] if integer_positions[i].nil?
          integer_positions[i] << index
        end
        integer_positions
      end
    end
  end
end