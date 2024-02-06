module API
  class BaseController < ActionController::API
    private

    def current_account
      return unless doorkeeper_token

      @current_account ||= Account.find(doorkeeper_token.resource_owner_id)
    end      
  end
end
