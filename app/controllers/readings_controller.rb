class ReadingsController < ApplicationController
  def index
    x = -1
    t = Time.now.to_i
    @readings = Reading.where(created_at: (Time.now - 1.year)..Time.now).map { |reading| { x: (reading.created_at.strftime(“%Y%m%d%H:%M”), y: reading.temperature } }
    #@readings = Reading.where(created_at: (Time.now - 1.day)..Time.now).map { |reading| { x: (reading.created_at.strftime(“%s”).to_i - Time.now.strftime(“%s”).to_i) , y: reading.temperature } }
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
