class AddCategory8ToTickets < ActiveRecord::Migration[5.0]
  def change
  	add_column :tickets, :category8, :string
  end
end
