RSpec.describe 'Api::V1::Articles', type: :request do
  describe 'GET /articles' do
    it 'returns text "success"' do
      get api_v1_articles_path

      expect(response).to be_successful
      expect(response).to have_http_status(:ok)
    end
  end
end
