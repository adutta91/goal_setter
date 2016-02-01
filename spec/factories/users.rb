FactoryGirl.define do
  factory :user do
    username Faker::Internet.user_name
    password "password"

    factory :short_pw do
      password "as"
    end

  end

end
