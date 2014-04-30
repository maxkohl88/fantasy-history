class UpdateHistories < ActiveRecord::Migration
  def change
    change_table :histories do |f|
      f.string :sport
      f.string :championship
      f.references :league, index: true
    end
  end
end
