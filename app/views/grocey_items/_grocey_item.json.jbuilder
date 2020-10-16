json.extract! grocey_item, :id, :item, :qty, :grocery_list_id, :created_at, :updated_at
json.url grocey_item_url(grocey_item, format: :json)
