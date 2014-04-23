require 'pry'
class ChargesController < ApplicationController
  def index
    @charges = Charge.all
  end

  def new
  end

  def create
    # Amount in cents
    begin
      @amount = params[:amount]

      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :card  => params[:stripeToken]
      )
      binding.pry

      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )
      flash[:notice] = "success"
      redirect_to root_path

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path
    end
  end
end
