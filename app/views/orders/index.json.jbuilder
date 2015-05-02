json.array!(@orders) do |order|
  json.extract! order, :id, :CNO, :ENO, :RECIEVED, :SHIPPED
  json.url order_url(order, format: :json)
end
