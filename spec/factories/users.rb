FactoryBot.define do
  factory :user do

    ## Associations 
    country
    category
    
    ## Own attributes
    id { 1 }
    username { "Vicente Simao" }
    localization_description { "Kilamba, Luanda" }
    email { "vicentevicii@gmail.com" }
    encrypted_password { "Vicente" }
    reset_password_token { "Vicente" }
    reset_password_sent_at { "2022-06-24 08:20:47" }
    remember_created_at { "2022-06-24 08:20:47" }
    confirmation_token { "token" }
    confirmed_at { "2022-06-24 08:20:47" }
    confirmation_sent_at { "2022-06-24 08:20:47" }
    unconfirmed_email { "vicentevicii@gmail.com" }
    created_at { "2022-06-24 08:20:47" }
    updated_at { "2022-06-24 08:20:47" }
    type_subscription { "Candidato" }
    password{ "Vicente" }
  end
end
