class Customer< ActiveRecord::Base
  has_many :charges
  has_many :organizations, through: :charges


  def self.save_customer(params)
    if Customer.find_by_email(params[:stripeEmail]).nil?
      new_customer = Customer.new()
      new_customer[:name]=params[:stripeBillingName]
      new_customer[:email]=params[:stripeEmail]
      new_customer[:address]=params[:stripeBillingAddressLine1]
      new_customer[:zip]=params[:stripeBillingAddressZip]
      new_customer[:city]=params[:stripeBillingAddressCity]
      new_customer[:state]=params[:stripeBillingAddressState]
      new_customer[:country]=params[:stripeBillingAddressCountry]
      new_customer[:county_code]=params[:stripeBillingAddressCountryCode]
      new_customer.save
    else
      new_customer = Customer.find_by_email(params[:stripeEmail])
    end
    new_customer

  end

end
