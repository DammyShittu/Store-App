json.shopping_cart do
  json.id @cart.id
  json.items @cart.items_array
  json.total @cart.all_items_total
end
