class AddColumnEducationTypeToUniversities < ActiveRecord::Migration[5.2]
  def change
    add_column :universities, :education_type, :string
  end
end
