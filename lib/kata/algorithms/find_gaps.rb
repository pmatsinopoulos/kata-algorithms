# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"
module Kata
  module Algorithms
    def self.find_gaps(n)
      binary_representation = n.to_s(2)
      in_gap = false
      length_of_gap = 0
      maximum_length = 0
      binary_representation.split('').each_with_index do |character, index|
        if character == "0" && index >= 1 && binary_representation[index-1] == "1"
          in_gap = true
          length_of_gap = 1
        elsif character == "0" && in_gap
          length_of_gap += 1
        elsif character == "1" && in_gap && index >= 1 && binary_representation[index-1] == "0"
          in_gap = false
          if length_of_gap > maximum_length
            maximum_length = length_of_gap
          end
          length_of_gap = 0
        end
      end
      maximum_length
    end
  end
end
