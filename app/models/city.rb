# frozen_string_literal: true
class City < ApplicationRecord
  self.table_name = 'cities'
  self.primary_key = 'id'

  has_many :neighborhoods, dependent: :destroy
  has_many :colleges, dependent: :destroy
  has_many :universities, dependent: :destroy
  belongs_to :state
end
