module Kata
  module DataStructures
    module Nodes
      module LinkedLists
        class LinkedList
          attr_accessor :first_node

          def initialize(first_node)
            self.first_node = first_node
          end

          def read(index)
            current_node = first_node
            index.times do
              return nil if current_node.nil?
              current_node = current_node.next_node
            end
            return nil if current_node.nil?
            current_node.data
          end

          def index(value)
            current_node = first_node
            current_index = 0
            while current_node
              if current_node.data == value
                return current_index
              else
                current_node = current_node.next_node
                current_index += 1
              end
            end
            -1
          end

          def insert(index, value)
            new_node = Kata::DataStructures::Nodes::LinkedLists::Node.new(value)
            current_node = first_node
            previous_node = nil
            current_index = 0
            while current_index < index
              previous_node = current_node
              current_node = current_node.next_node
              current_index += 1
            end

            if previous_node.nil?
              # we are adding at the beginning
              new_node.next_node = current_node
              self.first_node = new_node
            else
              previous_node.next_node = new_node
              new_node.next_node = current_node
            end
          end

          def delete(index)
            current_node = first_node
            previous_node = nil
            current_index = 0
            while current_index < index
              previous_node = current_node
              current_node = current_node.next_node
              current_index += 1
            end

            if previous_node.nil?
              # we are deleting the first node
              self.first_node = current_node.next_node
            else
              previous_node.next_node = current_node.next_node
            end
          end
        end
      end
    end
  end
end
