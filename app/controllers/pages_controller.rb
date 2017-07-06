class PagesController < ApplicationController
  def home
  end

  def about
  end

  def client_testimonials
      @testimonials = Testimonial.all
  end

  def portfolio
      @port = PhotoUpload.all
  end

  def client_viewing
  end

  def pricing
  end

  def contact_me
  end

  def blog
      @blog = Blog.all
  end

  def blog_show
  end
end
