# frozen_string_literal: true
class University < ApplicationRecord
  self.table_name  = 'universities'
  self.primary_key = 'id'  

  belongs_to :city
end
