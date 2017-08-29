module Kata
  module DataStructures
    module Nodes
      module LinkedLists
        class Node
          attr_accessor :data, :next_node

          def initialize(data)
            self.data = data
          end
        end
      end
    end
  end
end
