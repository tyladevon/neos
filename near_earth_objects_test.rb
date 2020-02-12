require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'poros/near_earth_objects'
# require_relative 'poros/asteroid'
# require_relative 'services/neo_service'

class NearEarthObjectsTest < Minitest::Test
  def test_a_date_returns_a_list_of_neos
    results = NearEarthObjects.find_neos_by_date('2019-03-30')
    binding.pry
    assert_equal '(2019 GD4)', results[:astroid_list][0][:name]
  end
end
