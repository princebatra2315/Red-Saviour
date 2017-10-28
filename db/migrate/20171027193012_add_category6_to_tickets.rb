class AddCategory6ToTickets < ActiveRecord::Migration[5.0]
  def change
  	add_column :tickets, :category6, :string
  end
end
