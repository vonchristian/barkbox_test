# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Dog, type: :model do
  describe 'associations' do
    it { is_expected.to have_many :likes }
    it { is_expected.to have_many_attached :images }
  end
end
