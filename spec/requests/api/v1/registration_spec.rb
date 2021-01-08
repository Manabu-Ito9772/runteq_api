RSpec.describe 'Api::V1::Registrations', type: :request do
  describe 'POST /registrations' do
    context 'when name, email and password is valid' do
      it 'returns user in json format' do
        request_hash = { headers: { CONTENT_TYPE: 'application/json', ACCEPT: 'application/json' }, params: { name: 'test', email: 'test@sample.com', password: 'password' }.to_json }
        post api_v1_registration_path, request_hash

        expect(body['data']['id'].to_i).to eq(1)
        expect(body['data']['type']).to eq('user')
        expect(body['data']['attributes']['name']).to eq('test')
        expect(body['data']['attributes']['email']).to eq('test@sample.com')
        expect(response).to be_successful
        expect(response).to have_http_status(200)
      end
    end

    context 'when name is invalid' do
      it 'returns 400error in json format' do
        post api_v1_registration_path, { headers: { CONTENT_TYPE: 'application/json', ACCEPT: 'application/json' }, params: { name: '', email: 'test@sample.com', password: 'password' }.to_json }

        expect(body['message']).to eq('Bad Request')
        expect(body['errors'].count).to eq(1)
        expect(response).to have_http_status(400)
      end
    end

    context 'when email is invalid' do
      it 'returns 400error in json format' do
        post api_v1_registration_path, { headers: { CONTENT_TYPE: 'application/json', ACCEPT: 'application/json' }, params: { name: 'test', email: '', password: 'password' }.to_json }

        expect(body['message']).to eq('Bad Request')
        expect(body['errors'].count).to eq(1)
        expect(response).to have_http_status(400)
      end
    end

    context 'when pasword is invalid' do
      it 'returns 400error in json format' do
        post api_v1_registration_path, { headers: { CONTENT_TYPE: 'application/json', ACCEPT: 'application/json' }, params: { name: 'test', email: 'test@sample.com', password: '' }.to_json }

        expect(body['message']).to eq('Bad Request')
        expect(body['errors'].count).to eq(1)
        expect(response).to have_http_status(400)
      end
    end
  end
end
