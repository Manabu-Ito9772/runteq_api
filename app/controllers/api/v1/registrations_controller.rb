module Api
  module V1
    class RegistrationsController < BaseController
      def create
        user = User.new(user_params)
        return render_error unless user.valid?

        user.save
        json_string = UserSerializer.new(user).serialized_json
        render json: json_string
      end

      private

      def user_params
        params.require(:user).permit(:name, :email, :password)
      end

      def render_error
        response = {
          message: 'Bad Request',
          errors: [
            "email can't be blank", "password can't be blank"
          ]
        }

        render json: response, status: 400
      end
    end
  end
end
