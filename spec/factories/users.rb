FactoryBot.define do
    factory :user do
        name{ 'Test User'}
        email{ 'test1@example.com' }
        password{ 'password' }
    end
end