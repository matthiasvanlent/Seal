class CreateEmployeevacancies < ActiveRecord::Migration
  def change
    create_table :employeevacancies do |t|
      t.integer :employer_id
      t.integer :vacency_id

      t.timestamps null: false
    end
  end
end
