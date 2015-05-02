json.array!(@employees) do |employee|
  json.extract! employee, :id, :FNAME, :LNAME, :ZIP
  json.url employee_url(employee, format: :json)
end
