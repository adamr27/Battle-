feature 'Game over' do
  context 'when Player 1 reaches 0 HP first' do
    scenario 'Player 2 loses' do
      sign_in_and_play
      # until page.current_path == '/game-over' do
      #   attack_and_confirm
      # end
      loop do
        click_button 'Attack'
        break if page.current_path == '/game-over'
        click_button 'OK'
      end
      expect(page).to have_content 'loses!'
    end
  end
end
