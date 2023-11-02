require 'rails_helper'

RSpec.describe Api::V1::FrameworksController, type: :controller do

  before { @framework = Framework.create(name: "sinatra", language: "ruby") }

  describe 'GET /api/v1/frameworks' do
    it 'Consegue listar todos os frameworks e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end
