module Kata
  module DataStructures
    module Nodes
      module Trees
        module BinaryTrees
          class Node
            attr_accessor :value, :left, :right

            def initialize(value, left = nil, right = nil)
              self.value = value
              self.left = left
              self.right = right
            end
          end
        end
      end
    end
  end
end
