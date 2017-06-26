class TestimonialsController < ApplicationController

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
          @testimonial = Testimonial.new
      end

      # GET /photo_uploads/1/edit
      def edit
      end

      # POST /photo_uploads
      # POST /photo_uploads.json
      def create
        @testimonial = Testimonial.new(testimonial_params)

        respond_to do |format|
          if @testimonial.save
            format.html { redirect_to testimonials_path, notice: 'Testimonial was successfully created.' }
            format.json { render :show, status: :created, location: testimonial_index_path }
          else
            format.html { render :new }
            format.json { render json: @testimonial.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /photo_uploads/1
      # PATCH/PUT /photo_uploads/1.json
      def update
        respond_to do |format|
          if @testimonial.update(testimonial_params)
            format.html { redirect_to @testimonial, notice: 'Testimonial upload was successfully updated.' }
            format.json { render :show, status: :ok, location: @testimonial }
          else
            format.html { render :edit }
            format.json { render json: @testimonial.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /photo_uploads/1
      # DELETE /photo_uploads/1.json
      def destroy
        @testimonial.destroy
        respond_to do |format|
          format.html { redirect_to testimonials_url, notice: 'Testimonial was successfully deleted.' }
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