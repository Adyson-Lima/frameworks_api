class Api::V1::FrameworksController < ApplicationController

  before_action :set_framework, only: %i[show update] #show update destroy

  def index
    @frameworks = Framework.all
    render json: @frameworks
  end

  def show
    render json: @framework
  end

  def create
    @framework = Framework.new(framework_params)
    if @framework.save
      render json: @framework, status: :created, location: api_v1_framework_url(@framework)
    else
      render json: @framework.errors, status: :unprocessable_entity
    end
  end

  def update
    if @framework.update(framework_params)
      render json: @framework
    else
      render json: @framework.errors, status: :unprocessable_entity
    end
  end

private

def set_framework
  @framework = Framework.find(params[:id])
end

def framework_params
  params.require(:framework).permit(:name, :language)
end

end
