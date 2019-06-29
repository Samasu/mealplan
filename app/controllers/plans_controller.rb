class PlansController < ApplicationController
  PER = 1
  def index
   @q = current_user.plans.ransack(params[:q])
   @plans = @q.result(distinct: true).page(params[:page]).per(PER)
  end

  def show
   @plan = Plan.find(params[:id])
  end

  def new
   @plan = current_user.plans.build
  end

  def create
   plan = current_user.plans.build(plan_params)
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
    params.require(:plan).permit(:name, :description, :image)
  end
end