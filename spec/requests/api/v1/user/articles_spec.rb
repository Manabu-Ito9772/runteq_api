require 'rails_helper'

RSpec.describe "Api::V1::User::Articles", type: :request do
  describe "GET /api/v1/user/articles" do
    it "works! (now write some real specs)" do
      get api_v1_user_articles_path
      expect(response).to have_http_status(200)
    end
  end
end
