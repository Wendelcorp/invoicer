class RemoveInvoiceNumberFromClient < ActiveRecord::Migration[5.0]
  def change
    remove_column :clients, :invoice_number, :string
  end
end
