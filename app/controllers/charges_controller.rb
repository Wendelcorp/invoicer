class ChargesController < ApplicationController
  def new
end

  def create
    @amount = params[:amount]
    @invoice = Invoice.find(params[:invoice_id])
    @invoice.update(status: "true")
    @invoice.save
    @user = User.find(@invoice.user_id)

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
    @stripe_account = @user.uid

    charge = Stripe::Charge.create({
      :currency => "cad",
      :source => "tok_visa",
      :amount => @amount,
      :application_fee => 500,
    }, :stripe_account => @user.uid)


  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
