json.array!(@meta) do |metum|
  json.extract! metum, :id, :username, :password, :committee1, :committee2, :committee3, :committee4, :committee5, :workday1, :workday2, :workday3, :workday4, :workday5, :workday6, :workday7
  json.url metum_url(metum, format: :json)
end
