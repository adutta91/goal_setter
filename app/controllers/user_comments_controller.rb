# == Schema Information
#
# Table name: user_comments
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  body       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer          not null
#

class UserCommentsController < ApplicationController

  before_action :redirect_unless_logged_in

  def new
  end

  def create
    @user_comment = UserComment.new(user_comment_params)
    @user_comment.author_id = current_user.id
    if @user_comment.save
      redirect_to user_url(@user_comment.user_id)
    else
      flash[:errors] = @user_comment.errors.full_messages
      redirect_to user_url(@user_comment.user_id)
    end
  end

  def destroy
    @user_comment = UserComment.find_by_id(params[:id])
    @user_comment.destroy
    redirect_to user_url(@user_comment.user_id)
  end


  private

  def user_comment_params
    params.require(:user_comment).permit(:body, :user_id)
  end


end
