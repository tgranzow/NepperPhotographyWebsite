class ImagesController < ApplicationController
    before_action :set_photo_uploads

    def create
        add_more_images(images_params[:images])
        flash[:error] = "Failed uploading images" unless @photo_upload.save
        redirect_to :back
    end

    private

    def set_photo_uploads
        @photo_upload = PhotoUpload.find(params[:photo_upload_id])
    end

    def add_more_images(new_images)
        images = @photo_upload.images # copy the old images
        images += new_images # concat old images with new ones
        @photo_upload.images = images # assign back
    end

    def images_params
        params.require(:photo_upload).permit({images: []}) # allow nested params as array
    end
end
