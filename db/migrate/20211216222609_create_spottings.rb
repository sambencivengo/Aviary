class CreateSpottings < ActiveRecord::Migration[6.1]
  def change
    create_table :spottings do |t|
      t.string :notes
      t.references :user, null: false, foreign_key: true
      t.references :bird, null: false, foreign_key: true
      t.string :image
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
