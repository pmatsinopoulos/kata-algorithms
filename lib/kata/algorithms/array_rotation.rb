module Kata
  module Algorithms
    # rotate elements by k
    #
    def self.rotate_array(array, k)
=begin
      N are the number of elements
      element on position i goes to i + 1 (for k = 1)
      element on position i goes to i + 2 (for k = 2)
                          i goes to i + 3 (for k = 3)
      if i + k > N - 1 then we need to see how many positions from the end
      we are: diff = "i + k - N + 1"
      then i needs to move to "diff - 1"
=end
      return nil if array.nil?
      return array if array.empty?
      array_size = array.size
      new_array = []
      k = k % array_size if k > array_size
      array.each_with_index do |element, index|
        new_position = index + k
        if new_position > array_size - 1
          new_position = index + k - array_size
        end
        new_array[new_position] = element
      end
      new_array
    end
  end
end
