class CreateEmployervacancies < ActiveRecord::Migration
  def change
    create_table :employervacancies do |t|
      t.integer :employee_id
      t.integer :vacency_id

      t.timestamps null: false
    end
  end
end
