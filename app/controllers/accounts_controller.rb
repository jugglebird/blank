class AccountsController < ResourceController::Singleton
  before_filter :login_required
  
  actions       :edit, :update
  model_name    :person
  object_name   :person
  
  protected
    def object
      @object ||= current_person
    end
end