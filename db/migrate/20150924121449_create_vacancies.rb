class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :zip
      t.string :country
      t.text :description

      t.timestamps null: false
    end
  end
end
