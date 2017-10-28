class AddCategory7ToTickets < ActiveRecord::Migration[5.0]
  def change
  	add_column :tickets, :category7, :string
  end
end
