class FriendshipsController < ApplicationController
  def new
    @friendship = Friendshi.new
  end

  def create
    @friendship = current_user.friendships.create(friendship_params)

    if @friendship.save
      # flash[:success]
    else
      render :new, status: :unprocessable_entity
      # flash
    end
  end

  private

  def friendship_params
    params.require(:frienship).permit(:user_id, :friend_id)
  end

end
