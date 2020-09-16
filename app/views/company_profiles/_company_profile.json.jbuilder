json.extract! company_profile, :id, :name, :website, :created_at, :updated_at
json.url company_profile_url(company_profile, format: :json)
