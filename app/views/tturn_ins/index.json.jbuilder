json.array!(@tturn_ins) do |tturn_in|
  json.extract! tturn_in, :id, :user_id, :exercises_id, :url, :completed, :, :=, :priority, :default, :=
  json.url tturn_in_url(tturn_in, format: :json)
end
