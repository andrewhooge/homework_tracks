json.array!(@aassignments) do |aassignment|
  json.extract! aassignment, :id, :title, :description, :date, :due
  json.url aassignment_url(aassignment, format: :json)
end
