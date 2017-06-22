class DevicesController < ApplicationController
  def index
    redis = Redis.new
    json = redis.get 'devices_list'
    render json: JSON.parse(json)
  end

  def update
  end
end
