# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_many :ownerships }
    it { is_expected.to have_many :dogs }
    it { is_expected.to have_many :likes }
    it { is_expected.to have_many :liked_dogs }
  end
end
