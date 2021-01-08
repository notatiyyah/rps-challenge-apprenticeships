feature "start game" do
    scenario "user can input name" do
        visit "/"
        fill_in 'name', with: 'Player_1'
        click_on "submit"
        expect(page).to have_content "Player_1"
    end
end