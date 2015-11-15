json.array!(@users) do |user|
  json.extract! user, :id, :firstname, :lastname, :plotnumber, :returning, :registered, :email, :phone, :address, :city, :state, :zip, :committee1, :committee2, :committee3, :committee4, :committee5, :plotpartners, :contactmethod, :postpermission, :secondplot
  json.url user_url(user, format: :json)
end
