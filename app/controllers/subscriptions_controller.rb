# frozen_string_literal: true
class SubscriptionsController < ApplicationController
  
  def create
    subscription = Subscription.new(subscription_params)
    binding.pry
    if verify_recaptcha(model: subscription) && subscription.save
      redirect_to root_path, success: 'Inscrição efetuada com sucesso.'
    else
      redirect_to root_path, error: 'Falha ao efetuar inscrição, tente novamente mais tarde.'
    end
  end

  private

  def subscription_params
    params.require(:subscription)
      .permit(
       :name,
       :birthdate,
       :gender,
       :rg,
       :email,
       :phone,
       :state_id,
       :city_id,
       :neighborhood_id,
       :college_id,
       :university_id,
       :profession_id,
       :term
      )
  end
end