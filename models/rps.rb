class RPS

  def initialize(player_1, player_2)
      @player_1 = player_1
      @player_2 = player_2
  end

  def result()
    if @player_1 == "rock" && @player_2 == "scissors"
      return "Rock Wins"
    elsif @player_1 == "rock" && @player_2 == "paper"
      return "Paper Wins"
    elsif @player_1 == "paper" && @player_2 == "scissors"
      return "Scissors Wins"
    elsif @player_1 == "paper" && @player_2 == "rock"
      return "Paper Wins"
    elsif @player_1 == "scissors" && @player_2 == "rock"
      return "Rock Wins"
    elsif @player_1 == "scissors" && @player_2 == "paper"
      return "Scissors Wins"
    elsif @player_1 == @player_2
      return "Play Again"
    end
  end
end
