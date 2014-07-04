json.array!(@jedis) do |jedi|
  json.extract! jedi, :id, :first_name, :last_name, :sex, :location
  json.url jedi_url(jedi, format: :json)
end
