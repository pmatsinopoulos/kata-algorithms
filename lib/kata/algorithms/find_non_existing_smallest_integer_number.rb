module Kata
  module Algorithms
    def self.find_non_existing_smallest_integer_number(array)
      return 1 if array.empty?

      # expected worst-case time complexity is O(N);
      # expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
      existing = []
      array.each do |element|
        existing[element] = 1 unless element < 0
      end

      return 1 if existing.empty?

      first_nil = existing[1..-1].find_index { |i| i.nil? }
      if first_nil.nil?
        existing.size
      else
        first_nil + 1
      end
    end
  end
end
