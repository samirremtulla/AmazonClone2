class ReviewsController < ApplicationController

  def index
    #show all the reviews per product
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews
  end

  def new
    @review = Review.new
    @product = Product.find(params[:product_id])

  end

  def create
    @review = Review.new(params[:review])
    @review.user = current_user
    @review.product = Product.find(params[:product_id])

    if @review.save
      redirect_to products_path, notice: "Thank you for writing a review!"
    else
      render action: :new
    end      
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
