class CreateUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :universities do |t|
      t.string :name
      t.text :description
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
