class CommentsController < ApplicationController
  def create
    @plan = Plan.find(params[:plan_id])
    @comment = @plan.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
     redirect_back(fallback_location: root_path)
    
  end

  def destory
    plan = Plan.find(params[:plan_id])
    @comment = plan.comments.find(params[:id])
    @comment.destroy
    redirect_back(fallback_location: plan_path(plan))
  end

  private

  def comment_params
   params.require(:comment).permit(:body, :plan_id)
  end

end
