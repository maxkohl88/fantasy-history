class AddYearToHistory < ActiveRecord::Migration
  def change
    change_table :histories do |t|
     t.integer :year 
    end
  end
end
