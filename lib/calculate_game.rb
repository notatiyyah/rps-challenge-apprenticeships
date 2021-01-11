class CalculateGame
    
    attr_reader :player_move, :result, :comp_move
    
    def initialize(move)
        @player_move = move.downcase
        randomise_comp_move
        calculate_win
    end
    
    private
    
    def randomise_comp_move
        @comp_move = ["rock", "paper", "scissors"].sample
    end

    def calculate_win_condition
        case @player_move
        when "rock"
            return "paper"
          when "paper"
            return "scissors"
          when "scissors"
            return "rock"
        end
    end

    def calculate_win
        if @player_move == @comp_move
            @result = "Draw"
        else
            @result = (@comp_move == calculate_win_condition ? "Computer" : "Player")
        end
    end
end
