class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :legaltype
      t.string :street
      t.string :city
      t.string :zip
      t.string :country
      t.references :sector, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
