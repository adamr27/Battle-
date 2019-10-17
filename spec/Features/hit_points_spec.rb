feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Adam R: 60HP'
  end

  scenario 'see player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Adam F: 60HP'
  end 
end
