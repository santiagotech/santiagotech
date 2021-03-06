# frozen_string_literal: true
class CreateNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    create_table   :neighborhoods do |t|
      t.string     :name
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
