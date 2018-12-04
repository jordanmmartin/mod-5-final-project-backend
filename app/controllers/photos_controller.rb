class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :update, :destroy]
  skip_before_action :authorized

  # GET /photos
  def index
    @photos = Photo.all

    render json: @photos
  end

  # GET /photos/1
  def show
    render json: {photo: PhotoSerializer.new(@photo), user: UserSerializer.new(@photo.user)}
  end

  # POST /photos
  def create
    @photo = Photo.create(photo_params)

    if @photo.valid?
      render json: @photo, status: :created
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /photos/1
  def update
    if @photo.update(photo_params)
      render json: @photo
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /photos/1
  def destroy
    @photo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def photo_params
      params.require(:photo).permit(:user_id, :caption, :url)
    end
end
