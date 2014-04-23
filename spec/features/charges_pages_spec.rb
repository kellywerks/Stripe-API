require 'spec_helper'

describe 'charges' do
  it 'has a view' do
    visit charges_path
  end
  # it 'allows the user to donate to an organization'
  #   visit charges_path
  #   select organization_name, with: "OHS"
  #   fill_in credit_card_number, with: "4242424242424242"
  #   fill_in credit_card_type, with: "Visa"
  #   fill_in
  #   click_button submit
  #   page.should have_content
end
