require 'test_helper'

class DevicesControllerTest < ActionDispatch::IntegrationTest

  setup do
    redis = Redis.new
    redis.set 'devices_list', [{chipid: '1234', state: 'off', pinged_at: Time.now}].to_json
  end
  
  test "should get index" do
    get '/devices'
    assert_response :success
  end

  test "should get update" do
    put '/devices/:id'
    assert_response :success
  end

end
