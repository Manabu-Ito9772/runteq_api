module Api
  module V1
    class AuthenticationsController < BaseController
      def create
        @user = login(params[:email], params[:password])
        raise ActiveRecord::RecordNotFound unless @user

        api_key = @user.api_keys.find_by(user_id: @user.id)
        if api_key.expired?
          api_key.destroy
          @user.api_keys.create
        end
        json_string = UserSerializer.new(@user).serialized_json
        render json: json_string
      end
    end
  end
end
