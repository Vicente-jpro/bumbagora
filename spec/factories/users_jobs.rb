FactoryBot.define do
  factory :users_job do
    
    #Associations
    category

    ## Own attributes
    id { 1 }
    type_subscription { "Empresa" }
    created_at { "2022-06-24 08:21:11" }
    updated_at { "2022-06-24 08:21:11" }
  end
end
