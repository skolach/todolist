require 'rails_helper'

RSpec.describe Task, type: :model do
  
  context 'Associations' do

    it 'belongs_to project' do
      association = described_class.reflect_on_association(:project).macro
      expect(association).to qe :belongs_to
    end

  end

end