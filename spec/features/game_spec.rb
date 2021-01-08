feature "start game" do
    scenario "user can input name" do
        visit "/"
        fill_in 'name', with: 'Player_1'
        click_on "Submit"
        expect(page).to have_content "Welcome, Player_1"
    end
end