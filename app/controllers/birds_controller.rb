class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds, only: [:id, :name, :species]
  end

# We can define our own error messages rather than receive a HTTP error with the conditional statement

  def show 
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: bird, only: [:id, :name, :species]
    else 
      render json: {message: 'Bird not found'}
    end
  end

end