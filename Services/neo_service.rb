class NeoService
    def initialize(date)
        @date = date
    end 

    def asteroid_results
        asteroids_list_data = conn.get('/neo/rest/v1/feed')
        JSON.parse(asteroids_list_data.body, symbolize_names: true)[:near_earth_objects][:"#{@date}"]    
    end 

    private 
    def conn 
        Faraday.new(
        url: 'https://api.nasa.gov',
        params: { start_date: @date, api_key: ENV['nasa_api_key']}
        )
    end 
end 
