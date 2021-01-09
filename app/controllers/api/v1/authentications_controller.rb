module Api
  module V1
    class AuthenticationsController < BaseController
      def create
        @user = login(params[:email], params[:password])
        raise ActiveRecord::RecordNotFound unless @user

        json_string = UserSerializer.new(@user).serialized_json
        api_key = @user.activate_api_key!
        response.headers['AccessToken'] = api_key.access_token
        render json: json_string
      end
    end
  end
end
