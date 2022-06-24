FactoryBot.define do
  factory :users_job do
    id { 1 }
    type_subscription { "MyString" }
    user_id { 1 }
    job_id { 1 }
    created_at { "2022-06-24 08:21:11" }
    updated_at { "2022-06-24 08:21:11" }
  end
end
