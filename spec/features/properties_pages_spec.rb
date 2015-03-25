require "rails_helper"

describe "add property process" do
  it "add a new property" do
    user = FactoryGirl.create(:user)
    property = FactoryGirl.create(:property)
    visit "/"
    click_on "Sign in"
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_on "Log in"
    click_on "Add property"
    fill_in "Name", :with => property.name
    fill_in "Description", :with => property.description
    fill_in "Price", :with => property.price
    click_on "Create Property"
    expect(page).to have_content "successfully"
  end
end
