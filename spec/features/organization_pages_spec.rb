require 'spec_helper'

describe "create a new organization" do

  it 'should allow a user to create a new organization' do
    visit new_organization_path
    fill_in :organization_name, with: "Oregon Humane Society"
    click_button "Create Organization"
    page.should have_content "Organization created"
  end

end
