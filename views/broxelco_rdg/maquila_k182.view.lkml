view: maquila_k182 {
  sql_table_name: broxelco_rdg.maquila_K182 ;;

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.num_cuenta ;;
  }

  dimension_group: vencimiento {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.vencimiento ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
