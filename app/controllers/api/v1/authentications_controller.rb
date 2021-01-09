module Api
  module V1
    class AuthenticationsController < BaseController
      def create
        @user = login(params[:email], params[:password])
        raise ActiveRecord::RecordNotFound unless @user

        # access_token = @user.api_keys.find_by(user_id: @user.id).access_token
        response.set_header('AccessToken', 'hello')
        json_string = UserSerializer.new(@user).serialized_json
        render json: json_string
      end
    end
  end
end
