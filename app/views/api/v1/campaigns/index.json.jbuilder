json.array! @campaigns do |campaign|
  json.extract! campaign, :id, :name, :orders, :campaign_items
end
