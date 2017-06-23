class TestimonialController < ApplicationController
  before_action :set_testimonial, only: [:show, :edit, :update, :destroy]

  # GET /photo_uploads
  # GET /photo_uploads.json
  def index
    @testimonials = Testimonial.all
  end

  # GET /photo_uploads/1
  # GET /photo_uploads/1.json
  def show
  end

  # GET /photo_uploads/new
  def new
    @testimonials = Testimonial.new
  end

  # GET /photo_uploads/1/edit
  def edit
  end

  # POST /photo_uploads
  # POST /photo_uploads.json
  def create
    @testimonials = Testimonial.new(testimonial_params)

    respond_to do |format|
      if @testimonials.save
        format.html { redirect_to @testimonials, notice: 'Testimonial was successfully created.' }
        format.json { render :show, status: :created, location: @testimonials }
      else
        format.html { render :new }
        format.json { render json: @testimonials.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_uploads/1
  # PATCH/PUT /photo_uploads/1.json
  def update
    respond_to do |format|
      if @testimonials.update(photo_upload_params)
        format.html { redirect_to @testimonials, notice: 'Testimonial upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @testimonials }
      else
        format.html { render :edit }
        format.json { render json: @testimonials.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_uploads/1
  # DELETE /photo_uploads/1.json
  def destroy
    @testimonials.destroy
    respond_to do |format|
        # DON"T KNOW HOW TO DO THIS PART
      format.html { redirect_to photo_uploads_url, notice: 'Testimonial was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonial
      @testimonial = Testimonial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testimonial_params
      params.require(:testimonial).permit(:posts)
    end
end
