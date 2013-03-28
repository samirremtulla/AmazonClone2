class ReviewsController < ApplicationController

  before_filter :load_product

  def index
    #show all the reviews per product
    @reviews = @product.reviews
    # @reviews = Reviews.where(:product_id => @product.id)
  end

  def new
    @review = Review.new
    @product = Product.find(params[:product_id])

  end

  def create
    @review = Review.new(params[:review])
    @review.user = current_user
    @review.product = load_product

    if @review.save
      redirect_to product_path(@product), notice: "Thank you for writing a review!"
    else
      render action: :new
    end      
  end

  def edit

  end

  def update

  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@product), notice: "Review deleted!"
  end

  def load_product
    @product = Product.find(params[:product_id])
  end

end
