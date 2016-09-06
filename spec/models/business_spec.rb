require 'rails_helper'

describe Business do
  [:name, :address, :phone_number, :web_address, :hours].each do |attr|
    it {should validate_presence_of(attr)}
  end

  it { should belong_to :type}
end
