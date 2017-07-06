class AddPortfolioTitleToPhotoUploads < ActiveRecord::Migration[5.0]
  def change
    add_column :photo_uploads, :portfolio_title, :text
  end
end
