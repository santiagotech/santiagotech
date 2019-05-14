# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    @subscription = Subscription.new
  end
end