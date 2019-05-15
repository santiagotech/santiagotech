# frozen_string_literal: true
class Subscription < ApplicationRecord
  self.table_name  = 'subscriptions'
  self.primary_key = 'id'

  after_create :signup_subscription_list

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

  validates :email,
            presence: true,
            uniqueness: true,
            allow_blank: false,
            length: { minimum: 3, maximum: 245 }
  
  validates :rg,
            presence: true,
            uniqueness: true,
            allow_blank: false,
            length: { minimum: 3, maximum: 30}

  def signup_subscription_list
    begin
      gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
      gibbon.timeout = 30
      gibbon.open_timeout = 30
      gibbon.lists('c7d08a2236').members.create(body: {
        email_address: self.email,
        status: 'subscribed',
        merge_fields: {
        }
     })
    rescue StandardError => e
      p 'Error'
    end
  end
end
