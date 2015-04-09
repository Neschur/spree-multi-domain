Spree::Admin::ProductsController.class_eval do
  create.after :assign_current_store

  def stores
  end

  protected
    def assign_current_store
      @product.stores = [current_store]
    end
end
