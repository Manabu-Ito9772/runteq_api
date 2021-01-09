# frozen_string_literal: true

module Api
  module V1
    class BaseController < ApplicationController
      include Api::ExceptionHandler
      include ActionController::HttpAuthentication::Token::ControllerMethods

      def current_user
        @_current_user
      end

      private

      def form_authenticity_token; end

      def authenticate_token
        @_current_user = ApiKey.find_by(access_token: '64a8f3aefc9c98b83cf80d363635d3c3').user
        authenticate_or_request_with_http_token do |access_token|
          access_token == @_current_user.api_keys.active.first.access_token
        end
      end
    end
  end
end
