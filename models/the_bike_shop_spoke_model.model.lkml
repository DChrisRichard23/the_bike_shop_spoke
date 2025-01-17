# connection: "the_tile_shop_poc"
include: "//the_bike_shop/models/*.model.lkml"
# include: "//the_bike_shop/views/*.view.lkml"
# include all the views
include: "/views/**/*.view"

explore: the_bike_shop_spoke_explore {
  extends: [fact_orders]
  view_name: fact_orders
  label: "The Bike Shop Spoke Explore"

  join: fact_orders_add {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_orders.order_id} = ${fact_orders_add.order_id} ;;
  }
}
