feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Adam F'
    fill_in :player_2_name, with: 'Adam R'
    click_button 'Submit'
    expect(page).to have_content 'Adam F vs. Adam R'
  end
end
