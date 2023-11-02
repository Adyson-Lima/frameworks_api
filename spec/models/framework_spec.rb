require 'rails_helper'

RSpec.describe Framework, type: :model do

  before { @framework = Framework.new }

  describe 'Teste de preenchimento dos campos do model Framework' do

    it 'name consegue ser preenchido?' do
      @framework.name = ""
      expect(@framework.name).to eq("rails")
    end

  end

end
