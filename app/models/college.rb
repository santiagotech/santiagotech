# frozen_string_literal: true
class College < ApplicationRecord
  self.table_name = 'colleges'
  self.primary_key = 'id'
  
  belongs_to :city
end
