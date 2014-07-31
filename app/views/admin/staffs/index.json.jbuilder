json.array!(@staffs) do |staff|
  json.extract! staff, :id, :name, :type, :title, :email, :phone, :blessing, :dictum, :quit
  json.url staff_url(staff, format: :json)
end
