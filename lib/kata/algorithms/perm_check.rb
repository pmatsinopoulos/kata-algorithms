module Kata
  module Algorithms
    # expected worst-case time complexity is O(N);
    # expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
    #
    # N is an integer within the range [1..100,000];
    # each element of array A is an integer within the range [1..1,000,000,000].
    #
    def self.perm_check(array)
      occurrences = Array.new(array.size + 1) # + 1 to make sure that we don't take into account the 0.
      occurrences[0] = 1
      array.each do |element|
        occurrences[element] = 1
      end
      !occurrences.find_index { |element| element.nil? }.nil? ? 0 : 1
    end
  end
end
