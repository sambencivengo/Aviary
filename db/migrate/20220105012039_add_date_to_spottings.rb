class AddDateToSpottings < ActiveRecord::Migration[6.1]
  def change
    add_column :spottings, :date, :datetime
  end
end
