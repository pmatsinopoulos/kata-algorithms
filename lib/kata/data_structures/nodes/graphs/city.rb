module Kata
  module DataStructures
    module Nodes
      module Graphs
        # City is a vertex in a directed weighted graph.
        class City
          attr_accessor :name, :routes

          def initialize(name)
            self.name = name
            self.routes = {} # a Hash with the route and the price to get this route.
          end

          def add_route(city, price)
            self.routes[city] = price
          end
        end
      end
    end
  end
end
