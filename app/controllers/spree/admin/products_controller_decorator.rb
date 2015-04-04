Spree::Admin::ProductsController.class_eval do
  update.before :set_stores

  def stores
  end

  private
  def set_stores
    @product.store_ids = nil unless params[:product].key? :store_ids
  end

end
