class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :team
      t.integer :wins
      t.integer :losses
      t.integer :ties

      t.timestamps
    end
  end
end
