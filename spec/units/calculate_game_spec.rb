require './lib/calculate_game.rb'

describe CalculateGame do
  let(:game) { CalculateGame.new("Player") }

  before do
    game.make_move("Rock", "override_random")
  end

  it "has a hash for user data" do
    player = game.player
    expect(player[:name]).to eq "Player"
    expect(player[:move]).to eq "Rock"
  end
  
  it "generates random move for computer" do
    srand(1)
    game.take_turn
    expect(game.comp_move).to eq "Paper"
  end

  describe "calculates who won" do

    it "player wins when rock vs scissors" do
      srand(3)
      game.take_turn
      expect(game.result).to eq "Player"
    end

    it "player loses when rock vs paper" do
      srand(1)
      game.take_turn
      expect(game.result).to eq "Computer"
    end

    it "draw when rock vs rock" do
      srand(2)
      game.take_turn
      expect(game.result).to eq "Draw"
    end

  end

end
