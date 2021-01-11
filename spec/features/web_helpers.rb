def sign_in
  visit "/"
  fill_in 'name', with: 'Player_1'
  click_on "Submit"
end
