class TargetsController < ApplicationController
  def index
  end

  def edit
  end

  def new
    @target = Target.new
  end

  def create
    target = Target.new(target_params)
    target.save
    redirect_to links_path
  end

  private
  def target_params
    params.require(:target).permit(:target)
  end
end
