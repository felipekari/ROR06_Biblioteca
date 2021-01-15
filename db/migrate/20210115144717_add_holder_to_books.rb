class AddHolderToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :holder, :string
  end
end
