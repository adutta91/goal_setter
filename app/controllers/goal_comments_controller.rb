class GoalCommentsController < ApplicationController

  before_action :redirect_unless_logged_in

  def new
  end

  def create
    @goal_comment = GoalComment.new(goal_comment_params)
    @goal_comment.author_id = current_user.id
    if @goal_comment.save
      redirect_to goal_url(@goal_comment.goal_id)
    else
      flash[:errors] = @goal_comment.errors.full_messages
      redirect_to goal_url(@goal_comment.goal_id)
    end
  end

  def destroy
    @goal_comment = GoalComment.find_by_id(params[:id])
    @goal_comment.destroy
    redirect_to goal_url(@goal_comment.goal_id)
  end


  private

  def goal_comment_params
    params.require(:goal_comment).permit(:body, :goal_id)
  end
end
