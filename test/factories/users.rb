FactoryGirl.define do
  sequence(:email) { |n| "person#{n}@example.com" }
  factory :user do
    first_name "John"
    last_name  "Doe"
    email
    password "password"
  end
end