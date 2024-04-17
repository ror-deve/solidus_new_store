 class CategoriesController < StoreController
  helper 'spree/products'
  respond_to :html

  def category
    
  end

  def index
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products
  end

  def show
    
  end

  def new
     
  end

  def create
     
  end

  def edit
     
  end

  def update
     
  end

  def destroy
     
  end
end
