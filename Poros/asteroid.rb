class Asteroid
    def initialized(info)
        binding.pry
    end
    def largest_asteroid
        largest_astroid_diameter = asteroid_results.map do |astroid|
            astroid[:estimated_diameter][:feet][:estimated_diameter_max].to_i
        end.max { |a,b| a<=> b}
    end 

    def total_number_of_asteroids
        total_number_of_astroids = parsed_asteroids_data.count
        formatted_asteroid_data = parsed_asteroids_data.map do |astroid|
            {
                name: astroid[:name],
                diameter: "#{astroid[:estimated_diameter][:feet][:estimated_diameter_max].to_i} ft",
                miss_distance: "#{astroid[:close_approach_data][0][:miss_distance][:miles].to_i} miles"
            }
        end 
    end

    def asteroid_list
        {
            astroid_list: formatted_asteroid_data,
            biggest_astroid: largest_astroid_diameter,
            total_number_of_astroids: total_number_of_astroids
        }
    end 
end 