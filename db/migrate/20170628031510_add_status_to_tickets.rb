class AddStatusToTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :status, :string, default: 'open'
    add_index :tickets, :status
  end
end
