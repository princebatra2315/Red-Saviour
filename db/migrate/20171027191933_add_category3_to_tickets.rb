class AddCategory3ToTickets < ActiveRecord::Migration[5.0]
  def change
  	add_column :tickets, :category3, :string
  end
end
