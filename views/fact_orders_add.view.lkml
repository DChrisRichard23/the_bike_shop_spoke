
include: "//the_bike_shop/views/fact_orders.view.lkml"

view: fact_orders_add {
  extends: [fact_orders]

  # measure: discount_amount {
  #   type: sum
  #   sql: ${discount_amount_in} ;;
  #   value_format: "$#,##0.00"
  #   label: "Discount Amt"
  # }

  # measure: discount_pct {
  #   type: number
  #   sql: (${discount_amount}/${sales})*100 ;;
  #   value_format: "0.00\%"
  #   label: "Discount Ratio"
  # }

}

explore: fact_orders_add {}
