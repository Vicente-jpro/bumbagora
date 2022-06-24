FactoryBot.define do
  factory :user do
    id { 1 }
    username { "MyString" }
    localization_description { "MyString" }
    email { "MyString" }
    encrypted_password { "MyString" }
    reset_password_token { "MyString" }
    reset_password_sent_at { "2022-06-24 08:20:47" }
    remember_created_at { "2022-06-24 08:20:47" }
    confirmation_token { "MyString" }
    confirmed_at { "2022-06-24 08:20:47" }
    confirmation_sent_at { "2022-06-24 08:20:47" }
    unconfirmed_email { "MyString" }
    created_at { "2022-06-24 08:20:47" }
    updated_at { "2022-06-24 08:20:47" }
    type_subscription { "MyString" }
    country_id { 1 }
  end
end
