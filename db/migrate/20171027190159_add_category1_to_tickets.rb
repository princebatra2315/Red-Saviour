class AddCategory1ToTickets < ActiveRecord::Migration[5.0]
  def change
  	add_column :tickets, :category1, :string  end
end
