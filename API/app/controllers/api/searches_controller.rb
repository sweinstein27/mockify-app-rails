class Api::SearchesController < ApplicationController
    
    def index
        @searches = Search.all.order("query ASC").group("query")
        render json: @searches
    
    end

    def create
        @searches = Search.create(query: params[:_json])
    end
end