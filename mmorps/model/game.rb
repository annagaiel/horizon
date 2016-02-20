class Game
  attr_reader :player_score, :computer_score, :message, :champion

  def initialize
    @player_token = nil
    @computer_token = nil
    @player_score = 0
    @computer_score = 0
    @message = nil
    @champion = nil
  end

  def player_throw(player_token)
    @player_token = player_token
  end

  def computer_throw
    @computer_token = ["Rock", "Paper", "Scissors"].sample
  end

  def round_winner
    if !tie?
      game_rules = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" }
      if game_rules[@player_token] == @computer_token
        @player_score += 1
        @message = "You chose #{@player_token}, computer chose #{@computer_token}. Human scores."
      else
        @computer_score += 1
        @message = "You chose #{@player_token}, computer chose #{@computer_token}. Computer scores."
      end
    end
  end

  def tie?
    if @player_token == @computer_token
      @message = "You chose #{@player_token}, computer chose #{@computer_token}. Tie, no winner."
      return true
    else
      return false
    end
  end

  def winner?
    if @player_score == 3 || @computer_score == 3
      @champion = 'Human' if @player_score == 3
      @champion = 'Computer' if @computer_score == 3
      return true
    else
      return false
    end
  end

  def reset_score
    @player_score = 0
    @computer_score = 0
    @player_token = nil
    @computer_token = nil
    @message = nil
    @champion = nil
  end

end
