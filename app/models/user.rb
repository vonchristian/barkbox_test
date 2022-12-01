class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :ownerships, class_name: 'Ownership', foreign_key: 'owner_id'
  has_many :dogs, through: :ownerships
  has_many :likes
  has_many :liked_dogs, through: :likes, source: :dog
end
