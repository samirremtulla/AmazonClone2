class ProductsController < ApplicationController
  
  def index
  #displays all products
  #GET product
    @products = Product.all
  end

  def show
  #displays individual products
  #GET product/1
    @product = Product.find(params[:id])
  end

  def new
  #displays form for new product
  #GET product/new
    @product = Product.new
  end

  def create
  #creates new product
  #POST product
    @product = Product.new(params[:product])

    if @product.save
      redirect_to @product, notice: "Product created successfully"
    else
      render action: :new
      #redirect_to :action => :new
    end

  end

  def edit
  #edits a product
  #GET product/1/edit
    @product = Product.find(params[:id])
  end
  
  def update
  #submits edit to a product
  #put product/1
    @product = Product.find(params[:id])
    @product.update_attributes(params[:product])
  end

  def destroy
  #deletes a product
    @product = Product.find(params[:id])
    @product.destroy
  end

end
