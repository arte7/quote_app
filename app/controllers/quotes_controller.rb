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
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid'
    end
    redirect_to root_path
  end

  def about
  end

  private

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end
end
