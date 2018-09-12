require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Cambridge Hellions", "Major League", "[Bob Raygun, Lindsay Teargas, Reginald Mace, Boxer Daly, Trinity Rathburn, Chelsea Scimitar]")
  end

  def test_to_hash_is_hash_class
    actual = @team.to_hash
    expected = {team_name: "Cambridge Hellions", level: "Major League", members: '[Bob Raygun, Lindsay Teargas, Reginald Mace, Boxer Daly, Trinity Rathburn, Chelsea Scimitar]', points: 0}
    assert_equal(expected, actual)
  end

end
