class History < ActiveRecord::Base
  

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      history = find_by_id(row["id"]) || new
      history.attributes = row.to_hash.slice(*accessible_attributes)
      history.save!
    end
  end
end
