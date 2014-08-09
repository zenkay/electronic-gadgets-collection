FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    pwd = Faker::Internet.password
    password pwd
    password_confirmation pwd
  end

  factory :gadget do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.sentence }
    association :user
  end
end