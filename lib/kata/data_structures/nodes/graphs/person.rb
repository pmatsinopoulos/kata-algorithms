module Kata
  module DataStructures
    module Nodes
      module Graphs
        class Person
          attr_accessor :name, :friends, :visited

          def initialize(name)
            self.name = name
            self.friends = []
            self.visited = false
          end

          def add_friend(person)
            self.friends << person
          end

          def display_network_breadth_first
            queue = []
            to_reset = [] # will be used to reset the visited flag back to false
            current_vertex = self
            queue << current_vertex
            result = ""
            while queue.size > 0
              current_vertex = queue.shift
              unless current_vertex.visited
                result = "#{result}," unless result.empty?
                result = "#{result}#{current_vertex.name}"
                current_vertex.visited = true
                to_reset << current_vertex
              end
              current_vertex.friends.each { |friend|  queue.push(friend) }
            end
            # clear visited flag.
            to_reset.each { |vertex|  vertex.visited = false }
            result
          end
        end
      end
    end
  end
end
