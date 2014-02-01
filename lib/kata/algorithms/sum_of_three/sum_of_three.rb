module Kata
  module Algorithms
    class SumOfThree < Struct.new(:array_of_integers)
      def find_three
        raise NotImplementedError.new("You have to implement this")
      end
    end
  end
end