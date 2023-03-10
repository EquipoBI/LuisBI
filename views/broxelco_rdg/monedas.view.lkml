view: monedas {
  sql_table_name: broxelco_rdg.Monedas ;;

  dimension: cod_moneda {
    type: string
    sql: ${TABLE}.CodMoneda ;;
  }

  dimension: num_moneda {
    type: string
    sql: ${TABLE}.NumMoneda ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
