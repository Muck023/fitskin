FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.free_email}
    password {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    usage_id {Faker::Number.between(from: 1, to: 6)}
    word {Faker::Lorem.sentence}

    after(:build) do |user|
      user.profile_image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

  end
end