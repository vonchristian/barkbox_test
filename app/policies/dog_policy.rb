class DogPolicy
  attr_reader :user, :dog

  def initialize(user, dog)
    @user = user
    @dog = dog
  end

  def update?
    user&.dogs.include?(dog)
  end
end
