class AddCategory2ToTickets < ActiveRecord::Migration[5.0]
  def change
  	add_column :tickets, :category2, :string
  end
end
