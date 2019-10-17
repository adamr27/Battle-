feature 'Game over' do
  context 'when Player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      10.times { attack_and_confirm }
      # allow(Kernal).to receive(:rand).and_return(60)
    end

    scenario 'Player 2 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Adam R loses!'
    end
  end
end
