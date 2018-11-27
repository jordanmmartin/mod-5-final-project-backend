class AnnotationsController < ApplicationController
  before_action :set_annotation, only: [:show, :update, :destroy]
  skip_before_action :authorized

  # GET /annotations
  def index
    @annotations = Annotation.all

    render json: @annotations
  end

  # GET /annotations/1
  def show
    render json: @annotation
  end

  # POST /annotations
  def create
    @annotation = Annotation.new(annotation_params)

    if @annotation.save
      render json: @annotation, status: :created, location: @annotation
    else
      render json: @annotation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /annotations/1
  def update
    if @annotation.update(annotation_params)
      render json: @annotation
    else
      render json: @annotation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /annotations/1
  def destroy
    @annotation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annotation
      @annotation = Annotation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def annotation_params
      params.require(:annotation).permit(:photo_id, :name, :url, :category, :brand, :shade)
    end
end
