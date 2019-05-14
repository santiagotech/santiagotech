# frozen_string_literal: true
class Subscription < ApplicationRecord
  self.table_name  = 'subscriptions'
  self.primary_key = 'id'

  belongs_to :state
  belongs_to :city
  belongs_to :neighborhood
  belongs_to :college
  belongs_to :university
  belongs_to :profession
end
