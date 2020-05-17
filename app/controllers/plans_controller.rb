class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end
  
  def show
    @plan = Plan.find(params[:id])
    @comment = Comment.new(plan_id: @plan.id)
    @comments = @plan.comments
  end
end
