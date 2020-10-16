json.extract! grocery_list, :id, :name, :total_amount, :created_at, :updated_at
json.url grocery_list_url(grocery_list, format: :json)
