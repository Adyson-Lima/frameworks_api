class Api::V1::FrameworksController < ApplicationController

  before_action :set_framework, only: %i[show] #show update destroy

  def index
    @frameworks = Framework.all
    render json: @frameworks
  end

  def show
    render json: @framework
  end

private

def set_framework
  @framework = Framework.find(params[:id])
end

def framework_params
  params.require(:framework).permit(:name, :language)
end

end
