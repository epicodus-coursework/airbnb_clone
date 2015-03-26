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
    photo_file_name "moose.jpg"
    photo_content_type "image/jpeg"
    photo_file_size "10385"
    photo_updated_at "2015-03-26 19:11:46.187185"
  end
end
