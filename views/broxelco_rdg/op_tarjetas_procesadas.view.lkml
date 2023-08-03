view: op_tarjetas_procesadas {
  sql_table_name: broxelco_rdg.Op_tarjetas_procesadas ;;

  dimension: account_period {
    type: number
    sql: ${TABLE}.ACCOUNT_PERIOD ;;
  }

  dimension_group: closing {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.closing_date ;;
  }

  dimension: id_cycle {
    type: number
    sql: ${TABLE}.ID_CYCLE ;;
  }

  dimension: id_issuer {
    type: number
    sql: ${TABLE}.ID_ISSUER ;;
  }

  dimension: id_product {
    type: number
    sql: ${TABLE}.ID_PRODUCT ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: numero_tarjetas {
    type: number
    sql: ${TABLE}.NUMERO_TARJETAS ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, name]
  }
}
