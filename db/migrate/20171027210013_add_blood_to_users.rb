class AddBloodToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :blood, :string
  end
end
