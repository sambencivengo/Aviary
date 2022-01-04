class AddLatToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :lat, :float
  end
end
