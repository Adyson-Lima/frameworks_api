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

  describe 'POST /api/v1/frameworks' do
    it 'Consegue criar um framework e retornar status 201?' do
      post :create, params: {framework: {name: "laravel",language: "php"},fomat: :json}
      expect(response.body).to include_json(name: "laravel")
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/frameworks/id' do
    it 'Consegue atualizar um framework e retornar status 200?' do
      framework = Framework.last
      patch :update, params: {framework:
                              {name: "spring", language: "java"}, id: framework.id}
      expect(response.body).to include_json(name: "spring")
      expect(response).to have_http_status(200)
    end

  end

end
