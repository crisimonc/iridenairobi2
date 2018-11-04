class ReviewsController < ApplicationController

  def new
    @motorcycle = Motorcycle.find(params[:motorcycle_id].to_i)
    @review = Motorcycle.new(motorcycle: @motorcycle)
  end

  def create
    @review = Review.new(review_params)
    @motorcycle = Motorcycle.find(params[:motorcycle_id].to_i)
    @review.motorcycle = @motorcycle
    
    if @review.save
       redirect_to motorcycle_path(@booking.motorcycle)
    else
       render :new
    end
  end


private

  def review_params
    params.require(:review).permit(:content, :stars, :motorcycle_id)
  end

end
