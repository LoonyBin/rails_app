FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "person#{n}@example.com" }
    password "password"

    # factory :admin do
    #   role "admin"
    # end
  end
end

