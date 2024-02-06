module API
  module V1
    class UsersController < API::V1::BaseController
      before_action only: %i[me] do
        doorkeeper_authorize!(:read)
      end

      def me
        render json: current_account.to_json(only: %i[id email])
      end
    end
  end
end
