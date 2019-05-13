# frozen_string_literal: true
class Contact
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_reader :name, :phone, :email, :subject, :message

  def initialize(params = {})
    @name    = params[:name]
    @phone   = params[:phone]
    @email   = params[:email]
    @subject = params[:subject]
    @message = params[:message]
  end

  def persisted?
    false
  end
end
