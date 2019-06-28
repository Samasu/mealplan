class PlansController < ApplicationController
  def index
   @plans= Plan.all
  end

  def show
   @plan = Plan.find(params[:id])
  end

  def new
   @plan = Plan.new
  end

  def create
   plan = Plan.new(plan_params)
   plan.save!
   redirect_to plans_url, notice: "ミール「#{plan.name}」を登録しました。"
  end

  def update
   plan = Plan.find(params[:id])
   plan.update!(plan_params)
   redirect_to plans_url, notice:" ミール「#{plan.name}を更新しました」"
  end

  def edit
   @plan = Plan.find(params[:id])
  end

  def destroy
   plan = Plan.find(params[:id])
   plan.destroy
   redirect_to plans_url, notice: "ミール「#{plan.name}」を削除しました。"
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :description)
  end
end