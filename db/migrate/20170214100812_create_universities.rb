class CreateUniversities < ActiveRecord::Migration[5.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :principal_first_name
      t.string :pricinipal_last_name
      t.string :city

      t.timestamps
    end
  end
end
