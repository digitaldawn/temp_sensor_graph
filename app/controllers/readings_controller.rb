class ReadingsController < ApplicationController
  def index
    @readings = Reading.all
    render json: @readings
  end

  def create
    temp = permitted_params[:Temperature]
    @reading = Reading.new(temperature: temp.to_f)
    if @reading.save
      render json: { head: 'ok'}
    end
  end

  def update
  end

private
  def permitted_params
    params.permit(:Temperature)
  end
end
