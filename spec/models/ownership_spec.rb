# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ownership, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :dog }
    it { is_expected.to belong_to :owner }
  end

  describe 'validations' do
    it 'unique dog_id scoped to owner_id' do
      dog   = create(:dog)
      owner = create(:user)
      create(:ownership, dog: dog, owner: owner)
      record = build(:ownership, dog: dog, owner: owner)
      record.save

      expect(record.errors[:dog_id]).to include('has already been taken')
    end
  end
end
