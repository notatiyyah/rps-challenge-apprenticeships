require './lib/calculate_game.rb'

describe CalculateGame do
    let(:game) { CalculateGame.new("Rock") }
    
    it "generates random move for computer" do
        srand(1)
        expect(game.comp_move).to eq "paper"
    end

    describe "calculates who won" do

        it "player wins when rock vs scissors" do
            srand(3)
            expect(game.result).to eq "Player"
        end

        it "player loses when rock vs paper" do
            srand(1)
            expect(game.result).to eq "Computer"
        end

        it "draw when rock vs rock" do
            srand(2)
            expect(game.result).to eq "Draw"
        end

    end

end