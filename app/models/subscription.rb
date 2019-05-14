class Subscription < ApplicationRecord
  belongs_to :state
  belongs_to :city
  belongs_to :neighborhood
  belongs_to :college
  belongs_to :university
  belongs_to :profession
end
