class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def newgame
    hands = [@hand1, @hand2]
    if @hand1 == @hand2
      return "Draw!"
    elsif !hands.include?("scissors")
      return "Paper covers Rock! Congratulations Player #{hands.index("paper") +1}!"
    elsif !hands.include?("rock")
      return "Scissors cuts Paper! Congratulations Player #{hands.index("scissors") +1}!"
    else
      return "Rock smashes Scissors! Congratulations Player #{hands.index("rock") +1}!"
    end
  end

end
