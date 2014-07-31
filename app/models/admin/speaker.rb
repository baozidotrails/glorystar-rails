class Admin::Speaker < Speaker

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      speaker = find_by_id(row["id"]) || new
      parameters = ActionController::Parameters.new(row.to_hash)
      speaker.update(parameters.permit(:name, :title, :org))
      speaker.save!
    end
  end

end