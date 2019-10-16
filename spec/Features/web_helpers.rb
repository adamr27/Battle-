def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Adam F'
  fill_in :player_2_name, with: 'Adam R'
  click_button 'Submit'
end
