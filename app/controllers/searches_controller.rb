class SearchesController < ApplicationController
  def index
    @searches = Search.all
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)
    @search.filter = session["students#index"]

    respond_to do |format|
      if @search.save
        format.html { redirect_to @search, notice: 'Seach Filter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @search }
        format.js   { render action: 'show', status: :created, location: @search }
        @search = Search.new
        @searches = Search.all
      else
        format.html { render action: 'new' }
        format.json { render json: @search.errors, status: :unprocessable_entity }
        format.js   { render json: @search.errors, status: :unprocessable_entity }
       end
     end
  end

private

  def search_params
    params.require(:search).permit(:name, :filter)
  end

end
