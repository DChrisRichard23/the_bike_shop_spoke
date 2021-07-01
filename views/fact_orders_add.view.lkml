
include: "//the_bike_shop/views/dim_product.view.lkml"

view: dim_product_add {
  extends: [dim_product]

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


explore: dim_product_add {}
