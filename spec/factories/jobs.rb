FactoryBot.define do
  factory :job do
    id { 1 }
    title { "MyString" }
    type_job { "MyString" }
    description { "MyText" }
    salary { 1 }
    category_id { 1 }
    created_at { "2022-06-24 08:21:07" }
    updated_at { "2022-06-24 08:21:07" }
    user_id { 1 }
    applayers { 1 }
    number_days { 1 }
  end
end
