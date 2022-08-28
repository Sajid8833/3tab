require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference("Car.count") do
      post cars_url, params: { car: { car_condition: @car.car_condition, car_detail: @car.car_detail, car_id: @car.car_id, car_image: @car.car_image, car_model: @car.car_model, car_name: @car.car_name, issue_year: @car.issue_year, seller_name: @car.seller_name } }
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { car_condition: @car.car_condition, car_detail: @car.car_detail, car_id: @car.car_id, car_image: @car.car_image, car_model: @car.car_model, car_name: @car.car_name, issue_year: @car.issue_year, seller_name: @car.seller_name } }
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference("Car.count", -1) do
      delete car_url(@car)
    end

    assert_redirected_to cars_url
  end
end
