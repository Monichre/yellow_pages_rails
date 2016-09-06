require 'rails_helper'

describe "the edit a type process" do
  it "edits a business" do
    type = Type.create(:name => 'Mechanic Shop')
    visit type_path(type)
    click_on "Add a Business"
    business = type.businesses.create(:name => "Bob's Auto", :web_address => "www.bobsauto.com", :phone_number => "555-123-1234", :address => "123 Main Street", :hours => "9am to 5pm")
    click_on "Create Business"
    visit type_business_path(type, business)
    click_on 'Edit'
    fill_in "Name", :with => "Mikes's Auto"
    fill_in "Web address", :with => "www.mikesauto.com"
    fill_in "Phone number", :with => "555-123-1234"
    fill_in "Address", :with => "123 Main Street"
    fill_in "Hours", :with => "9am to 5pm"
    click_on "Update Business"
    expect(page).to have_content "Mikes's Auto 555-123-1234 www.mikesauto.com 123 Main Street 9am to 5pm"
  end

  it "gives error when no name is entered" do
    type = Type.create(:name => 'Mechanic Shop')
    visit type_path(type)
    click_on "Add a Business"
    business = type.businesses.create(:name => "Bob's Auto", :web_address => "www.bobsauto.com", :phone_number => "555-123-1234", :address => "123 Main Street", :hours => "9am to 5pm")
    click_on "Create Business"
    visit type_business_path(type, business)
    click_on 'Edit'
    fill_in "Name", :with => ""
    fill_in "Web address", :with => "www.mikesauto.com"
    fill_in "Phone number", :with => "555-123-1234"
    fill_in "Address", :with => "123 Main Street"
    fill_in "Hours", :with => "9am to 5pm"
    click_on "Update Business"
    expect(page).to have_content 'errors'
  end
end
