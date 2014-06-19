class ReadingsController < ApplicationController
  def index
    x = -1
    @readings = Reading.where(created_at: (Time.now.midnight - 1.day)..Time.now.midnight).map { |reading| { x: x+=1, y: reading.temperature } }
    render json: @readings.to_json
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

  def home
    render :file => 'public/index.html' and return
  end

private
  def permitted_params
    params.permit(:Temperature)
  end
end
