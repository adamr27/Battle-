

feature 'Game over' do
  context 'when Player 1 reaches 0 HP first' do
    before do
      until page == '/game-over' do
        attack_and_confirm
      end
    end

    scenario 'Player 2 loses' do
      expect(page).to have_content 'loses!'
    end
  end
end
