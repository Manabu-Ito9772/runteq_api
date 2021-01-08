module Api
  module V1
    class RegistrationsController < BaseController
      def create
        user = User.new(user_params)
        if user.save
          json_string = UserSerializer.new(user).serialized_json
          render json: json_string
        else
          raise ActionController::BadRequest
        end
      end

      private

      def user_params
        params.permit(:name, :email, :password)
      end
    end
  end
end
