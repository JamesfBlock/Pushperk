class Campaign < ApplicationRecord
  has_many :orders
  has_many :campaign_items
end
