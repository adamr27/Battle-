require 'player'

describe Player do
  subject(:adam_f) { Player.new('Adam F') }
  subject(:adam_r) { Player.new('Adam R') }

  describe '#name' do
    it 'returns the name' do
      expect(adam_f.name).to eq 'Adam F'
    end
  end
  describe '#hitpoints' do
    it 'returns the hit points' do
      expect(adam_f.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  # describe '#attack' do
  #   it 'damages the player' do
  #     expect(adam_r).to receive(:receive_damage)
  #     adam_f.attack(adam_r)
  #   end
  # end
  describe '#receive_damage' do
    it 'reduces the player hit points' do
      damage = adam_f.damage
      expect{adam_f.receive_damage}.to change { adam_f.hit_points }.by(-damage)
    end
  end
end
