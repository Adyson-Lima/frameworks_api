require 'rails_helper'

RSpec.describe Framework, type: :model do

  before { @framework = Framework.new }

  describe 'Teste de preenchimento dos campos do model Framework' do

    it 'name consegue ser preenchido?' do
      @framework.name = "rails"
      expect(@framework.name).to eq("rails")
    end

    it 'language consegue ser preenchido?' do
      @framework.language = ""
      expect(@framework.language).to eq("ruby")
    end

  end

end
