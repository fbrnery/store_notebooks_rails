class BillingController < ApplicationController
    skip_before_action :authorize
    def new_card
    end

    def create_card 
        respond_to do |format|
    
          customer = Stripe::Customer.new current_user.stripe_id
          customer.source = card_token
          #we're attaching the card to the stripe customer
          customer.save
    
          format.html { redirect_to success_path }
        end

        def success
        end
      end
    end