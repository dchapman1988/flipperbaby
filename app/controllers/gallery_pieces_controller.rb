class GalleryPiecesController < ApplicationController
  before_action :set_gallery_piece, only: [:show, :edit, :update, :destroy]

  # GET /gallery_pieces
  # GET /gallery_pieces.json
  def index
    @gallery_pieces = GalleryPiece.all
  end

  # GET /gallery_pieces/1
  # GET /gallery_pieces/1.json
  def show
  end

  # GET /gallery_pieces/new
  def new
    @gallery_piece = GalleryPiece.new
  end

  # GET /gallery_pieces/1/edit
  def edit
  end

  # POST /gallery_pieces
  # POST /gallery_pieces.json
  def create
    @gallery_piece = GalleryPiece.new(gallery_piece_params)

    respond_to do |format|
      if @gallery_piece.save
        format.html { redirect_to @gallery_piece, notice: 'Gallery piece was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gallery_piece }
      else
        format.html { render action: 'new' }
        format.json { render json: @gallery_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gallery_pieces/1
  # PATCH/PUT /gallery_pieces/1.json
  def update
    respond_to do |format|
      if @gallery_piece.update(gallery_piece_params)
        format.html { redirect_to @gallery_piece, notice: 'Gallery piece was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gallery_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gallery_pieces/1
  # DELETE /gallery_pieces/1.json
  def destroy
    @gallery_piece.destroy
    respond_to do |format|
      format.html { redirect_to gallery_pieces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery_piece
      @gallery_piece = GalleryPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_piece_params
      params.require(:gallery_piece).permit(:title, :type, :size, :materials, :gallery_id)
    end
end
