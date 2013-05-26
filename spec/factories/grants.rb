# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grant do
    amount ""
    created "2013-05-25"
    amount 1.5
    from nil
    to nil
    start "2013-05-25"
    ends "2013-05-25"
  end
end
