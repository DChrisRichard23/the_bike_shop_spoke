# connection: "the_tile_shop_poc"
include: "//the_bike_shop/models/*.model.lkml"

explore: the_bike_shop_spoke_explore {
  extends: [fact_orders]
  view_name: fact_orders
}
