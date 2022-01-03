class AddDescriptionToBirds < ActiveRecord::Migration[6.1]
  def change
    add_column :birds, :description, :string
  end
end
