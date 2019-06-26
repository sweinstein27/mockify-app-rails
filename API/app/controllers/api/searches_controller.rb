class Api::SearchesController < ApplicationController
    
    def index
        @searches = Search.all
        render json: @searches
    
    end

    def create
        binding.pry
        @searches = Search.create(query: params[:_json])
    end
end