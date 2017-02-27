class ChargesController < ApplicationController

  def new
  end

  def create
    @amount = params['payment_amount'].to_i * 100

    if params['payment_type'] == 'monthly'
      if @amount == 2500
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "basic_monthly"
        )
      elsif @amount == 5000
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "50_monthly"
        )
      elsif @amount == 7500
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "75_monthly"
        )
      elsif @amount == 10000
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "100_monthly"
        )
      elsif @amount == 15000
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "150_monthly"
        )
      elsif @amount == 20000
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "200_monthly"
        )
      end
    elsif params['payment_type'] == 'annual'
      if @amount == 2500
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "25_annual"
        )
      elsif @amount == 5000
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "50_annual"
        )
      elsif @amount == 7500
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "75_annual"
        )
      elsif @amount == 10000
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "100_annual"
        )
      elsif @amount == 15000
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "150_annual"
        )
      elsif @amount == 20000
        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :source  => params[:stripeToken],
          :plan => "200_annual"
        )
      end
    elsif params['payment_type'] == 'one_time'
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
      charge = Stripe::Charge.create(
        :customer => customer.id,
        :amount => @amount,
        :currency => 'usd',
        :description => 'One-Time Payment'
      )
    end

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end
end
