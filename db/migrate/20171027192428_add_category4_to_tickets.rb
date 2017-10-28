class AddCategory4ToTickets < ActiveRecord::Migration[5.0]
  def change
  	add_column :tickets, :category4, :string
  end
end
