RSpec.describe 'Api::V1::Authentications', type: :request do
  let!(:user) { create(:user) }

  describe 'post /authenticate' do
    it 'returns user in json format' do
      post api_v1_authenticate_path, headers: { CONTENT_TYPE: 'application/json', ACCEPT: 'application/json' }, params: { email: user.email, password: user.password }.to_json

      expect(body['data']['id'].to_i).to eq(user.id)

      expect(response).to be_successful
      expect(response).to have_http_status(:ok)
    end
  end
end
