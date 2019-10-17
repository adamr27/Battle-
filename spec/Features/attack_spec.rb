feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Adam F attacked Adam R'
  end
  scenario 'reduce Player 2 HP by a random amount' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Adam R: 60HP'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Adam R attacked Adam F'
  end
  scenario 'reduce Player 1 HP by a random amount' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Adam F: 60HP'
  end
end
