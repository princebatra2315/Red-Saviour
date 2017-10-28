class AddCategory9ToTickets < ActiveRecord::Migration[5.0]
  def change
  	add_column :tickets, :category9, :string
  end
end
