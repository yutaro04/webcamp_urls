class LinksController < ApplicationController
    def index
        @links = Link.all
    end

    def new
        @link = Link.new
        @tags = Tag.all
    end

    def create
        link = Link.create(link_params)
        link.save
        redirect_to links_path
    end

    def show
    end

    def edit
    end

    private

    def link_params
        params.require(:link).permit(:name,:text,:url,:tag_id)
    end

end
