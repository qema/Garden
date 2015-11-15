class ChargesController < ApplicationController
  #@@amount
  def new
  end
  #@temp = 0
  def test
  end

  def create
    # token = params[:stripeToken]
    # Amount in cents
    #@amount = 1500
    #@amount1 = 4000
    #@amount2 = 10000

    customer = Stripe::Customer.create(
        # :card => token,
        :email => params[:stripeEmail],
        :source => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
        :customer => customer.id,
        :amount => params[:amount],
        :description => 'Rails Stripe Customer',
        :currency => 'usd'
    )

      #save_stripe_customer_id(user, customer.id)
      #user = User.find_by_id(params(:id))
      #user.appointments.update_attribute(:date, params(:date))


  rescue Stripe::CardError =>e
    flash[:error]=e.message
    redirect_to new_charge_path

  end



end
