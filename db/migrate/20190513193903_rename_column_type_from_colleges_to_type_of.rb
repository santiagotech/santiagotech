# frozen_string_literal: true
class RenameColumnTypeFromCollegesToTypeOf < ActiveRecord::Migration[5.2]
  def change
    rename_column :colleges, :type, :type_of
  end
end
