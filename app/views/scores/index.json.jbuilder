json.array!(@scores) do |score|
  json.extract! score, :id, :team, :blairScore, :peddieScore, :active
  json.url score_url(score, format: :json)
end
