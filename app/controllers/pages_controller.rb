class PagesController < ApplicationController
  def home
  end

  def about
  end

  def client_testimonials
      @testimonials = Testimonial.all
  end

  def portfolio
  end

  def wedding
  end

  def engagement
  end

  def family
  end

  def product_photography
  end

  def scenic_photography
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
