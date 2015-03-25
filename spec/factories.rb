FactoryGirl.define do
  factory :user do
    username "MikeSteelz"
    email "Mike@Mike.com"
    password "12345678"
    password_confirmation "12345678"
  end

  factory :property do
    name "NW Loft"
    description "Private room..."
    price "$240/week"
  end
end
