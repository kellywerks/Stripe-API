require 'spec_helper'

describe "organizations" do

  it 'should allow a user to create a new organization' do
    visit new_organization_path
    fill_in :organization_name, with: "Oregon Humane Society"
    click_button "Create Organization"
    page.should have_content "Organization created"
  end

  it 'displays an index of all organizations with links to show pages' do
    org = Organization.create(name: "OHS")
    org2 = Organization.create(name: "TPTA")
    visit organizations_path
    page.should have_content "OHS"
    page.should have_content "TPTA"
    click_link "TPTA"
    page.should_not have_content "OHS"
  end

end
