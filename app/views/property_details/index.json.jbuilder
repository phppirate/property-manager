json.array!(@property_details) do |property_detail|
  json.extract! property_detail, :id, :property_id, :name, :source_type, :source_contact, :status, :date_of_contact, :requirements, :comments
  json.url property_detail_url(property_detail, format: :json)
end
