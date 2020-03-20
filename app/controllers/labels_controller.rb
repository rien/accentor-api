class LabelsController < ApplicationController
  before_action :set_label, only: %i[show update destroy]

  def index
    authorize Label
    @labels = apply_scopes(policy_scope(Label))
              .order(id: :asc)
              .paginate(page: params[:page], per_page: params[:per_page])
    add_pagination_headers(@labels)
  end

  def show; end

  def create
    authorize Label
    @label = Label.new(permitted_attributes(Label))

    if @label.save
      render :show, status: :created
    else
      render json: @label.errors, status: :unprocessable_entity
    end
  end

  def update
    if @label.update(permitted_attributes(@label))
      render :show, status: :ok
    else
      render json: @label.errors, status: :unprocessable_entity
    end
  end

  def destroy
    render json: @label.errors, status: :unprocessable_entity unless @label.destroy
  end

  def destroy_empty
    authorize Label
    Label.where.not(id: AlbumLabel.select(:label_id).distinct).destroy_all
  end

  private

  def set_label
    @label = Label.find(params[:id])
    authorize @label
  end
end
