class AddEbirdLinkToBirds < ActiveRecord::Migration[6.1]
  def change
    add_column :birds, :ebird, :string
  end
end
