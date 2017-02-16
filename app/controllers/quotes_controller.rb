class QuotesController < ApplicationController
  def index
    @quotes = Quote.order("RAND()").first
  #  @quotes = Quote.all
  #hat alle quotes gezeigt, aber nicht die abfrage box
  end

  def new
    @quote = Quote.new
  end
  #reserves a column for new quotes in our database

  def create
    Quote.create(quote_params)
    redirect_to root_path
  end

  private

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end
end
