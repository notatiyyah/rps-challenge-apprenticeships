class CalculateGame
    
    attr_reader :player, :result, :comp_move
    
    def initialize(player_name)
        @player = Hash.new
        @player[:name] = player_name
    end

    def make_move(move, override_random=nil)
        @player[:move] = move.capitalize
        take_turn unless override_random
    end
    
    def take_turn
        randomise_comp_move
        calculate_win
    end

    private

    def randomise_comp_move
        @comp_move = ["Rock", "Paper", "Scissors"].sample
    end

    def calculate_win_condition
        case @player[:move]
        when "Rock"
            return "Paper"
          when "Paper"
            return "Scissors"
          when "Scissors"
            return "Rock"
        end
    end

    def calculate_win
        if @player[:move] == @comp_move
            @result = "Draw"
        else
            @result = (@comp_move == calculate_win_condition ? "Computer" : @player[:name] )
        end
    end
end
