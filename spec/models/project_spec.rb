require 'rails_helper'

RSpec.describe Project, type: :model do
  
  context 'Associations' do
    
    it 'has_many tasks' do
      association = described_class.reflect_on_association(:tasks)
      expect(association.macro).to eq :has_many
      expect(association.options[:dependent]).to eq :destroy
    end
    
    it 'belongs_to user' do
      association = described_class.reflect_on_association(:user).macro
      expect(association).to qe :belongs_to
    end

  end

end