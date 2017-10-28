class AddCategory5ToTickets < ActiveRecord::Migration[5.0]
  def change
  	add_column :tickets, :category5, :string
  end
end
