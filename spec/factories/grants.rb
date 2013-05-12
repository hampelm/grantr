# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grant do
    created "2013-05-12"
    amount 1.5
    from nil
    to nil
    start "2013-05-12"
    ends "2013-05-12"
  end
end
