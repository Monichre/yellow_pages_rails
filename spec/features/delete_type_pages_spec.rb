require 'rails_helper'

describe "the destroy a type process" do
  it "destroy a type" do
    type = Type.create(:name => 'Mechanic Shop')
    visit type_path(type)
    click_on 'Delete'
    expect(page).to have_content "Types"
  end

end
