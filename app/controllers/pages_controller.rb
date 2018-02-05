class PagesController < ApplicationController
  def home
    @products = Product.all

  end

  def men
  end

  def women
  end

  def kids
  end

  def sale
  end

  def aboutAs
  end

  def support
  end
end
