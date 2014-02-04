class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :itemcode
      t.string :productcode
      t.string :description
      t.string :keyword
      t.string :url

      t.timestamps
    end
  end
end
