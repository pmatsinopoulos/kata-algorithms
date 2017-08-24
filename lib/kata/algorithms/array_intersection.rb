module Kata
  module Algorithms
    class ArrayIntersection < Struct.new(:a, :b)
      def intersect
        # if N = 5 and both have same size
        #    i = 0, then N comparisons of the N elements of longer to i
        #    i = 1, then N comparisons of the N elements of longer to I
        #    ...
        #    i = N-1, then N
        #
        # O(N^2)
        return [] if a.nil? || b.nil?

        shorter, longer = a.size < b.size ? [a, b] : [b, a]
        result = []
        i = 0
        while i < shorter.size
          j = 0
          while j < longer.size
            if longer[j] == shorter[i]
              result << shorter[i]
              break
            end

            j += 1
          end
          i += 1
        end
        result
      end
    end
  end
end
