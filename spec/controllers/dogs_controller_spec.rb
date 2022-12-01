require 'rails_helper'

RSpec.describe DogsController, type: :controller do
  describe '#index' do
    it 'displays paginated dogs' do
      10.times { create(:dog) }
      get :index
      expect(assigns(:dogs).size).to eq(5)
    end
  end
end
