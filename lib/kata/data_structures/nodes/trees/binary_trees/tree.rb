module Kata
  module DataStructures
    module Nodes
      module Trees
        module BinaryTrees
          class Tree
            attr_accessor :root_node

            def initialize(root_node)
              self.root_node = root_node
            end

            def search(value)
              current_node = root_node
              until current_node.nil?
                if current_node.value == value
                  return current_node
                elsif current_node.value < value
                  current_node = current_node.right
                else
                  current_node = current_node.left
                end
              end
              nil
            end

            def search_recursive(value)
              if root_node.value == value
                return root_node
              end

              if root_node.value < value
                if root_node.right.nil?
                  return nil
                end

                return Kata::DataStructures::Nodes::Trees::BinaryTrees::Tree.new(root_node.right).search_recursive(value)
              end

              if root_node.left.nil?
                return nil
              end

              Kata::DataStructures::Nodes::Trees::BinaryTrees::Tree.new(root_node.left).search_recursive(value)
            end
          end
        end
      end
    end
  end
end
