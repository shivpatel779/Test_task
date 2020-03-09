class DashboardController < ApplicationController
  def index
  	@questions = Question.all
  end

  def follow_user
  	follower= Follow.new(followed_user_id:current_user.id,follower_id:params[:follower_id])
  	if follower.save
  		redirect_to :back
  	else
  		flash[:notice] = follower.errors
  	end
  end
end
