# frozen_string_literal: true
class SubscriptionController < ApplicationController
  def create
    subscription = Subscription.new(subscription_params)
    if subscription.save
      redirect_to root_path, success: 'Inscrição efetuada com sucesso.'
    else
      redirect_to root_path, error: 'Falha ao efetuar inscrição, tente novamente mais tarde.'
    end
  end
end