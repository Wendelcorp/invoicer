class ChargesController < ApplicationController
  def new
end

def create

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  @stripe_account = current_user.uid

  charge = Stripe::Charge.create({
    :currency => "cad",
    :source => "tok_visa",
    :amount => params[:amount],
    :application_fee => 500,
  }, :stripe_account => current_user.uid)

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end
