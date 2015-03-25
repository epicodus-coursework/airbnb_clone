require "rails_helper"

describe "add user process" do
  it "adds a user" do
    visit "/"
    click_on "Register"
    visit new_user_registration_path
    fill_in "Username", :with => "Mike"
    fill_in "Email", :with => "Mike@Mike.com"
    fill_in "Password", :with => "12345678"
    fill_in "Password confirmation", :with => "12345678"
    click_on "Sign up"
    expect(page).to have_content "successfully"
  end
end
