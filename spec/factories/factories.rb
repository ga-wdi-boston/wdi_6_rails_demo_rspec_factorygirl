FactoryGirl.define do
  factory :contact do
    user
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber.phone_number }
  end

  factory :user do
    email { Faker::Internet.email }
    password 'swordfish'
  end
end
