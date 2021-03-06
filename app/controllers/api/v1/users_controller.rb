class Api::V1::UsersController < ApplicationController
	def index
    survey = Survey.all.order(created_at: :desc)
    render json: survey
  end

  def create
    survey = Survey.create!(survey_params)
    if survey
      render json: survey
    else0
      render json: survey.errors
    end
  end

  def show
    if survey
      render json: survey
    else
      render json: survey.errors
    end
  end

  def destroy
    survey&.destroy
    render json: { message: 'survey Deleted!' }
  end

  private

    def survey_params
      params.permit(:name)
    end

    def survey
      @survey ||= Survey.find(params[:id])
    end
end
