json.extract! car, :id, :car_id, :car_name, :car_model, :car_detail, :seller_name, :issue_year, :car_condition, :car_image, :created_at, :updated_at
json.url car_url(car, format: :json)
