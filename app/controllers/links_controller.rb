class LinksController < ApplicationController
    def index
        @links = Link.all
        @search = Link.new
    end

    def search
        @links = Link.where(target_id: 4)
    end

    def new
        @link = Link.new
        @tags = Tag.all
        @target_link = TargetLink.new
    end

    def create
        link = Link.create(link_params)
        link.save
        target_array = link_params[:target_id]
        binding.pry
        params[:link][:target_links][:target_id].each do |f|
           
            tcreate = TargetLink.create(target_id: [f],link_id: [link.id])
            tcreate.save
        end
        redirect_to links_path
    end

    def destroy
        link = Link.find(params[:id])
        link.destroy
        redirect_to links_path
    end

    def edit
        @link = Link.find(params[:id])
    end

    def update
        link = Link.find(params[:id])
        link.update(link_params)
        redirect_to links_path
    end

    private

    def link_params
        params.require(:link).permit(:name,:text,:url,:tag_id,target_links_attributes: {target_id: []})
    end

end
