require 'rails_helper'

RSpec.describe Framework, type: :model do

  before { @framework = Framework.new }

  describe 'Teste de preenchimento dos campos do model Framework' do

    it 'name consegue ser preenchido?' do
      @framework.name = "rails"
      expect(@framework.name).to eq("rails")
    end

    it 'language consegue ser preenchido?' do
      @framework.language = "ruby"
      expect(@framework.language).to eq("ruby")
    end

  end

  describe 'Teste de validação do model Framework' do

    it 'Framework valido com campos obrigatorios preenchidos?' do
      @framework.name = "spring"
      @framework.language = "java"
      expect(@framework).to be_valid
    end

    it 'Framework invalido com campos obrigatorios não preenchidos?' do
      framework = Framework.new
      expect(framework).to be_valid
    end

  end

end
