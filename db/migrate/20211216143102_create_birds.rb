class CreateBirds < ActiveRecord::Migration[6.1]
  def change
    create_table :birds do |t|
      t.string :common_name
      t.string :sci_name
      t.string :image

      t.timestamps
    end
  end
end
