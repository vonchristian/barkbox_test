class Ownership < ApplicationRecord
  belongs_to :dog
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'

  validates :dog_id, uniqueness: { scope: :owner_id }
end
