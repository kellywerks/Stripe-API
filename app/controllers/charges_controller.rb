require 'pry'
class ChargesController < ApplicationController
  def index
    @charges = Charge.all
  end

  def new
    @charge = Charge.new
  end

  def create
    begin
      if Charge.stripe_process_charge(params)
        customer = Customer.save_customer(cust_params)
        charge = Charge.save_charge(customer.id,charge_params)
      end
      flash[:notice] = "success"
      redirect_to root_path
    rescue Stripe::CardError => e
      flash[:notice] = e.message
      redirect_to root_path
    end
  end

private
  def cust_params
    params.permit(:stripeBillingName,
                  :stripeEmail,
                  :stripeBillingAddressLine1,
                  :stripeBillingAddressZip,
                  :stripeBillingAddressCity,
                  :stripeBillingAddressState,
                  :stripeBillingAddressCountry,
                  :stripeBillingAddressCountryCode )
  end

  def charge_params
    params.require(:charge).permit(:amount, :organization_id)
  end
end
