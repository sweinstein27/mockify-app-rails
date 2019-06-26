class Api::SearchesController < ApplicationController
    
    def index
        @searches = Search.all
        render json: @searches
    
    end

    def create
        binding.pry
        @searches = Search.create
    end
end