require 'rails_helper'

describe 'the add a type process' do
  it "adds a new type" do
    visit types_path
    click_link "New Business Type"
    expect(page).to have_content "New type"
    fill_in 'type_name', :with => "Mechanic Shops"
    click_on "Create Type"
    expect(page).to have_content "Types"
  end

  it "gives an error when no name is entered" do
    visit new_type_path
    click_on "Create Type"
    expect(page).to have_content 'errors'
  end
end
