class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.date :birthdate
      t.string :gender
      t.string :rg
      t.string :email
      t.string :phone
      t.references :state, foreign_key: true
      t.references :city, foreign_key: true
      t.references :neighborhood, foreign_key: true
      t.references :college, foreign_key: true
      t.references :university, foreign_key: true
      t.references :profession, foreign_key: true
      t.boolean :term

      t.timestamps
    end
  end
end
