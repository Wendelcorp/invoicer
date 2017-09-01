class CreateLines < ActiveRecord::Migration[5.0]
  def change
    create_table :lines do |t|
      t.references :invoice, foreign_key: true
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
