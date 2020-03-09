class AnswersController < ApplicationController
		before_action :authenticate_user!

	def create
		question = Question.find(params[:question_id])
		answer = question.answers.new(text:params[:text],user_id: current_user.id)
		if answer.save
			redirect_to :back
		else
			flash[:notice] = answer.errors
		end

	end
end
