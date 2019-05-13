class CreateColleges < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :type
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
