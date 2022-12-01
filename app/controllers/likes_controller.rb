# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    @like = Like.create(like_params)
    update_likes_count
    redirect_to dogs_url
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :dog_id)
  end

  def update_likes_count
    dog = Dog.find(params[:like][:dog_id])
    dog.update(likes_count: dog.likes.size)
  end
end
