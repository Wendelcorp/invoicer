class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.date :due
      t.text :message
      t.boolean :status

      t.timestamps
    end
  end
end
