json.shopping_cart do
  all_items = []
  @cart.product_shopping_carts.map do |item|
    all_items << item.product.code
  end
  json.items all_items
  json.total @cart.all_items_total
end
