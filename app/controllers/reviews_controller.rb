class ReviewsController < ApplicationController
  def create
    video = Video.find(params[:video_id])
    redirect_to video
  end
end
