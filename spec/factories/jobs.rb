FactoryBot.define do
  factory :job do
    
    ## Associations 
    user
    category {user.category}

    ## Own attributes
    id { 1 }
    title { "Ruby on Rails" }
    type_job { "Remota" }
    description { "We are hiring, ruby on rails." }
    salary{ 500 }
    created_at { "2022-06-24 08:21:07" }
    updated_at { "2022-06-24 08:21:07" }
    applayers { 1 }
    number_days { 1 }
  end
end
