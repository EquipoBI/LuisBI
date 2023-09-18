view: programassociales {
  sql_table_name: `mgcp-10078073-bxl-bi-snd.BIPlata.ProgramasSociales`;;



  dimension: Comercio{
    type: string
    sql: ${TABLE}.Comercio ;;

  }

dimension: Fecha{
  type: date
  sql: ${TABLE}.Fecha ;;
}

dimension: Mes_txt {
  type: string
  sql: ${TABLE}.Mes_txt ;;
}

  dimension: user_id {
     description: "Unique ID for each user that has ordered"
     type: number
     sql: ${TABLE}.user_id ;;
   }

   dimension: lifetime_orders {
     description: "The total number of orders for each user"
     type: number
     sql: ${TABLE}.lifetime_orders ;;
   }

   dimension_group: most_recent_purchase {
     description: "The date when each user last ordered"
     type: time
     timeframes: [date, week, month, year]
     sql: ${TABLE}.most_recent_purchase_at ;;
   }

   measure: total_lifetime_orders {
     description: "Use this for counting lifetime orders across many users"
     type: sum
     sql: ${lifetime_orders} ;;
   }
}

# view: programassociales {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
