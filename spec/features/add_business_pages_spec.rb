require 'rails_helper'

describe 'the add a business process' do
  it "adds a new business" do
    visit types_path
    click_link "New Business Type"
    expect(page).to have_content "New type"
    fill_in 'type_name', :with => "Mechanic Shops"
    click_on "Create Type"
    expect(page).to have_content "Types"
    click_link "Mechanic Shops"
    expect(page).to have_content "Mechanic Shops"
    click_link "Add a Business"
    expect(page).to have_content "New Business"
    fill_in "Name", :with => "Bob's Auto"
    fill_in "Web address", :with => "www.bobsauto.com"
    fill_in "Phone number", :with => "555-123-1234"
    fill_in "Address", :with => "123 Main Street"
    fill_in "Hours", :with => "9am to 5pm"
    click_on "Create Business"
    expect(page).to have_content "Mechanic Shops"
  end

  it "gives an error when no name is entered" do
    visit types_path
    click_link "New Business Type"
    fill_in 'type_name', :with => "Mechanic Shops"
    click_on "Create Type"
    expect(page).to have_content "Types"
    click_link "Mechanic Shops"
    expect(page).to have_content "Mechanic Shops"
    click_link "Add a Business"
    expect(page).to have_content "New Business"
    fill_in "Web address", :with => "www.bobsauto.com"
    fill_in "Phone number", :with => "555-123-1234"
    fill_in "Address", :with => "123 Main Street"
    fill_in "Hours", :with => "9am to 5pm"
    click_on "Create Business"
    expect(page).to have_content 'errors'
  end

  it "gives an error when no web address is entered" do
    visit types_path
    click_link "New Business Type"
    fill_in 'type_name', :with => "Mechanic Shops"
    click_on "Create Type"
    expect(page).to have_content "Types"
    click_link "Mechanic Shops"
    expect(page).to have_content "Mechanic Shops"
    click_link "Add a Business"
    expect(page).to have_content "New Business"
    fill_in "Name", :with => "Bob's Auto"
    fill_in "Phone number", :with => "555-123-1234"
    fill_in "Address", :with => "123 Main Street"
    fill_in "Hours", :with => "9am to 5pm"
    click_on "Create Business"
    expect(page).to have_content 'errors'
  end

  it "gives an error when no phone number is entered" do
    visit types_path
    click_link "New Business Type"
    fill_in 'type_name', :with => "Mechanic Shops"
    click_on "Create Type"
    expect(page).to have_content "Types"
    click_link "Mechanic Shops"
    expect(page).to have_content "Mechanic Shops"
    click_link "Add a Business"
    expect(page).to have_content "New Business"
    fill_in "Name", :with => "Bob's Auto"
    fill_in "Web address", :with => "www.bobsauto.com"
    fill_in "Address", :with => "123 Main Street"
    fill_in "Hours", :with => "9am to 5pm"
    click_on "Create Business"
    expect(page).to have_content 'errors'
  end

  it "gives an error when no hours are entered" do
    visit types_path
    click_link "New Business Type"
    fill_in 'type_name', :with => "Mechanic Shops"
    click_on "Create Type"
    expect(page).to have_content "Types"
    click_link "Mechanic Shops"
    expect(page).to have_content "Mechanic Shops"
    click_link "Add a Business"
    expect(page).to have_content "New Business"
    fill_in "Name", :with => "Bob's Auto"
    fill_in "Web address", :with => "www.bobsauto.com"
    fill_in "Phone number", :with => "555-123-1234"
    fill_in "Address", :with => "123 Main Street"
    click_on "Create Business"
    expect(page).to have_content 'errors'
  end

  it "gives an error when no address is entered" do
    visit types_path
    click_link "New Business Type"
    fill_in 'type_name', :with => "Mechanic Shops"
    click_on "Create Type"
    expect(page).to have_content "Types"
    click_link "Mechanic Shops"
    expect(page).to have_content "Mechanic Shops"
    click_link "Add a Business"
    expect(page).to have_content "New Business"
    fill_in "Name", :with => "Bob's Auto"
    fill_in "Web address", :with => "www.bobsauto.com"
    fill_in "Phone number", :with => "555-123-1234"
    fill_in "Hours", :with => "9am to 5pm"
    click_on "Create Business"
    expect(page).to have_content 'errors'
  end
end
