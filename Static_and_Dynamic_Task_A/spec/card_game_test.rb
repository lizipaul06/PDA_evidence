require("minitest/autorun")
require("minitest/reporters")
require_relative '../card_game'
require_relative '../card'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Gametest < MiniTest::Test

  def setup
    @game = CardGame.new
    @card1 = Card.new("hearts", 1)
    @card2 = Card.new("clubs", 12)
    @cards = [@card1, @card2]
  end

  def  test_checkforAce
    assert_equal(true, @game.checkforAce(@card1))
    assert_equal(false, @game.checkforAce(@card2))
  end

  def test_highest_card_test
    assert_equal(@card2, @game.highest_card(@card1, @card2))
  end


    def test_highest_card_test
      assert_equal(@card2, @game.highest_card(@card1, @card2))
    end
  
   def test_card_total
     assert_equal("You have a total of ", CardGame.cards_total(@cards))
  end
end
