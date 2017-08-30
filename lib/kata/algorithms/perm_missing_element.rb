module Kata
  module Algorithms
    def self.perm_missing_element(array)
      return 1 if array.size == 0
      number_of_elements = array.size
      sum_if_all = (number_of_elements + 1) * ((number_of_elements + 1) + 1) / 2.0
      sum = array.reduce(:+)
      sum_if_all - sum
    end
  end
end
