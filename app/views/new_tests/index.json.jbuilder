json.array!(@new_tests) do |new_test|
  json.extract! new_test, :id, :email
  json.url new_test_url(new_test, format: :json)
end
