class RemoveStringColumnFromUserTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :string, :string
  end
end
