json.array!(@tests) do |test|
  json.extract! test, :id, :name, :blurb, :keywords, :parent
  json.url test_url(test, format: :json)
end
