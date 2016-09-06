require 'rails_helper'

describe "the destroy a business process" do
  it "destroy a business" do
    type = Type.create(:name => 'Mechanic Shop')
    visit type_path(type)
    click_on "Add a Business"
    business = type.businesses.create(:name => "Bob's Auto", :web_address => "www.bobsauto.com", :phone_number => "555-123-1234", :address => "123 Main Street", :hours => "9am to 5pm")
    click_on "Create Business"
    visit type_business_path(type, business)
    click_on 'Delete'
    expect(page).to have_content "Mechanic Shop"
  end

end
