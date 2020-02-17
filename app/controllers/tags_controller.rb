class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    tag = Tag.new(tag_params)
    tag.save
    redirect_to new_link_path
  end

  def destroy
  end

  def edit
  end

  private
  def tag_params
   params.require(:tag).permit(:tag_name)
  end

end
