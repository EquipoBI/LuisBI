view: puente2 {
  sql_table_name: broxelco_rdg.Puente2 ;;

  dimension: cliente {
    type: string
    sql: ${TABLE}.CLIENTE ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}.FECHA ;;
  }

  dimension: fechanom {
    type: string
    sql: ${TABLE}.FECHANOM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
