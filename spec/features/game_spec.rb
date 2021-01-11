require_relative "web_helpers.rb"

feature "start game" do
    scenario "user can input name" do
        sign_in
        expect(page).to have_content "Welcome, Player_1"
    end
end

feature "run game" do
    scenario "user can input move" do
        sign_in
        click_on "rock"
        expect(page).to have_content "Player_1's move : Rock"
    end
end