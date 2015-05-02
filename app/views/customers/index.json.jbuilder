json.array!(@customers) do |customer|
  json.extract! customer, :id, :FNAME, :LNAME, :ZIP
  json.url customer_url(customer, format: :json)
end
