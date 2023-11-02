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

  describe 'GET /api/v1/frameworks/id' do
    it 'Consegue retornar um framework especifico e retornar status 200?' do
      get :show, params: {id: @framework.id}
      expect(response.body).to include_json(id: @framework.id)
      expect(response).to have_http_status(200)
    end
  end

end
