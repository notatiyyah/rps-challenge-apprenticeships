require_relative "web_helpers.rb"

feature "start game" do
    scenario "user can input name" do
        sign_in
        expect(page).to have_content "Welcome, Player_1"
    end
end

feature "run game" do
    before do
        srand(3)
        sign_in
    end

    scenario "user can input move" do
        click_on "rock"
        expect(page).to have_content "Player_1's move : Rock"
    end

    scenario "outputs computer's move" do
        click_on "rock"
        expect(page).to have_content "Computer's move : Scissors"
    end

    feature "outputs win result" do

        scenario "Player wins" do
            click_on "rock"
            expect(page).to have_content "Player_1 wins!"
        end

        scenario "Computer wins" do
            click_on "paper"
            expect(page).to have_content "Computer wins!"
        end

        scenario "Draw" do
            click_on "scissors"
            expect(page).to have_content "Draw!"
        end

    end
end