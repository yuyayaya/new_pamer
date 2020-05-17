class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @plan = Plan.find(comment_params[:plan_id])
      if @comment.save
        redirect_to @plan
      else
        render template: "plans/show"
      end
  end
  
  
  private
  
  def comment_params
    params.require(:comment).permit(:content, :plan_id)
  end
end
