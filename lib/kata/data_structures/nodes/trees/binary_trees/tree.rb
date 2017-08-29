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

            def insert(value)
              if root_node.value < value
                if root_node.right.nil?
                  root_node.right = Kata::DataStructures::Nodes::Trees::BinaryTrees::Node.new(value)
                else
                  # we need to try to insert to the right part
                  Kata::DataStructures::Nodes::Trees::BinaryTrees::Tree.new(root_node.right).insert(value)
                end
              elsif root_node.value >= value
                if root_node.left.nil?
                  root_node.left = Kata::DataStructures::Nodes::Trees::BinaryTrees::Node.new(value)
                else
                  # we need to try to insert to the left part
                  Kata::DataStructures::Nodes::Trees::BinaryTrees::Tree.new(root_node.left).insert(value)
                end
              end
            end

            def to_s
              result = "#{root_node.value},"
              if root_node.left
                result = "#{result}#{self.class.new(root_node.left).to_s}"
              end
              if root_node.right
                result = "#{result}#{self.class.new(root_node.right).to_s}"
              end
              result
            end
          end
        end
      end
    end
  end
end
