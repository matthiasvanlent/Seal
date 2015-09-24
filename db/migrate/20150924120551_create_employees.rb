class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :firstname
      t.date :birthdate
      t.string :sex
      t.string :street
      t.string :city
      t.string :zip
      t.string :country
      t.string :email
      t.string :phone
      t.string :mobile
      t.references :skill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
