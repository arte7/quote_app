class QuotesController < ApplicationController
  def index
    @quote = Quote.order("RANDOM()").first
  #  @quotes = Quote.all
  #hat alle quotes gezeigt, aber nicht die abfrage box
  end

  def new
  end
  #reserves a column for new quotes in our database
end
