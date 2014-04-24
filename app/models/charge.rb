class Charge < ActiveRecord::Base
  belongs_to :organization
  belongs_to :customer
  validates :amount, presence: true

  def self.stripe_process_charge(params)
    @amount = params[:charge][:amount]

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
  end

  def self.save_charge(customer_id, params)
    charge = Charge.new(params)
    charge.customer_id = customer_id
    charge.save
    charge
  end
end

