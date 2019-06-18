class RegistrationsController < Devise::RegistrationsController
 
  def new
    build_resource({})
    self.resource.credit_card  = CreditCard.new
    respond_with self.resource
  end

  def create
    super
  end
 
  private
 
  def sign_up_params
    allow = [:name, :email, :password, :password_confirmation, :cpf, [credit_card_attributes: [:number, :security, :expiration]]]
    params.require(resource_name).permit(allow)
  end
 
end