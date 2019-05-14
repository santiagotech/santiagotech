# frozen_string_literal: true
class Subscription < ApplicationRecord
  self.table_name  = 'subscriptions'
  self.primary_key = 'id'

  scope :lasts,           ->{where(created_at: :asc)}
  scope :recents,         ->{where(created_at: :desc)}
  scope :by_state,        ->{where(state: state)}
  scope :by_city,         ->(city){where(city: city)}
  scope :by_neighborhood, ->(neighborhood){where( neighborhood: neighborhood)}
  scope :by_college,      ->(college){where(college: college)}
  scope :by_university,   ->(university){where(university: university)}
  scope :by_profession,   ->(profession){where(profession: profession)}

  belongs_to :state
  belongs_to :city
  belongs_to :neighborhood
  belongs_to :college
  belongs_to :university
  belongs_to :profession
end
