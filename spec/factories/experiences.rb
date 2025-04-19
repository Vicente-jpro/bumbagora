FactoryBot.define do
  factory :experience do
    company_name { "MyString" }
    profission { "MyString" }
    start_date { "2025-04-18" }
    end_date { "2025-04-18" }
    description { "MyText" }
    user { nil }
  end
end
