require 'rails_helper'

describe "the edit a type process" do
  it "edits a type" do
    type = Type.create(:name => 'Mechanic Shop')
    visit type_path(type)
    click_on 'Edit'
    fill_in 'Name', :with => 'Dentist'
    click_on 'Update Type'
    expect(page).to have_content 'Dentist'
  end

  it "gives error when no name is entered" do
    type = Type.create(:name => 'Mechanic Shop')
    visit type_path(type)
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_button 'Update Type'
    expect(page).to have_content 'errors'
  end
end
