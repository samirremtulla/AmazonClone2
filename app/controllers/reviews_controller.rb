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

  def load_product
    @product = Product.find(params[:product_id])
  end

end
