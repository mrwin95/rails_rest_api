require 'rails_helper'

RSpec.describe Api::UsersController do
    describe 'POST /api/v1/users' do
        subject {post '/api/v1/users', params: params}

        let(:params) {
            user: {username: username, avatar: avatar}
        }

        let(:username) {'Test User'}

        let(:avatar) { fixture_file_upload('avatar.jpg')}

        context 'valid request' do
            
        end
    end
end