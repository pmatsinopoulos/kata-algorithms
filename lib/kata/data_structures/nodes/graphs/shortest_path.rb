module Kata
  module DataStructures
    module Nodes
      module Graphs
        class ShortestPath < Struct.new(:city_from, :city_to, :all_vertices)
          MAX_DISTANCE = 10_000_000
          def path
            # We will build a table with the following structure:
            # destination_city1 => [cost, previous_city1]
            # destination_city2 => [cost2, previous_city2]
            #  ...
            #  ...
            # which will contain all the minimum costs to go from :city_from, to :destination_cityX via previous_cityX.
            #
            # If I have this information, then the shortest path to destination_cityX from :city_from will be
            #
            # city_from...previous_cityX, previous_cityX, destination_cityX
            #
            # The Hash will also contain the distance to the city_from.

            # Let's initialize this structure
            # require 'pry-byebug'; binding.pry
            shortest_routes_to_other_cities = {}
            all_vertices.each do |vertex|
              if vertex == city_from
                shortest_routes_to_other_cities[vertex] = [0, vertex]
              else
                shortest_routes_to_other_cities[vertex] = [Float::INFINITY, nil]
              end
            end

            visited_cities = [] # we need to keep track of the cities we have visited.

            current_city = city_from
            while current_city
              visited_cities << current_city

              current_city.routes.each do |city, price_info|
                # if the current calculated cost to go to the "city" (from the current city) is greater than the
                # cost to go from "city_from" to current city + leg price, then we have found a shorter leg
                if shortest_routes_to_other_cities[city][0] > shortest_routes_to_other_cities[current_city][0] + price_info
                  shortest_routes_to_other_cities[city] = [shortest_routes_to_other_cities[current_city][0] + price_info, current_city]
                end
              end

              current_city = nil
              cheapest_route_from_current_city = Float::INFINITY

              shortest_routes_to_other_cities.each do |city, price_info|
                if price_info[0] < cheapest_route_from_current_city && !visited_cities.include?(city)
                  cheapest_route_from_current_city = price_info[0]
                  current_city = city
                end
              end
            end

            result = ""
            current_city = city_to
            while current_city != city_from
              result = ",#{result}" unless result.empty?
              result = "#{current_city.name}#{result}"
              current_city = shortest_routes_to_other_cities[current_city][1]
            end
            "#{city_from.name},#{result}"
          end
        end
      end
    end
  end
end
