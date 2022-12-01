class LikePolicy
  attr_reader :user, :dog

  def initialize(user, dog)
    @user = user
    @dog = dog
  end

  def create?
    user && not_liked? && not_owned?
  end

  private

  def not_liked?
    user.liked_dogs.exclude?(dog)
  end

  def not_owned?
    user.dogs.exclude?(dog)
  end
end
