class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name
      t.string :firstname
      t.string :function
      t.references :company, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
