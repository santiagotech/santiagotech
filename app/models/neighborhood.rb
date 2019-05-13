# frozen_string_literal: true
class Neighborhood < ApplicationRecord
  self.table_name  = 'neighborhoods'
  self.primary_key = 'id'

  belongs_to :city
end
