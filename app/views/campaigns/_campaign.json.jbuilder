json.extract! campaign, :id, :name, :description, :active, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
