json.array!(@parts) do |part|
  json.extract! part, :id, :PNAME, :PRICE, :QUANTITY
  json.url part_url(part, format: :json)
end
