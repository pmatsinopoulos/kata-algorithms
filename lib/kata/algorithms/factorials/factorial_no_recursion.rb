module Kata
  module Algorithms
    module Factorials
      class FactorialNoRecursion < Struct.new(:integer)
        def factorial
          (2..integer).to_a.reduce(1) { |item, result|  result * item }
        end
      end
    end
  end
end
