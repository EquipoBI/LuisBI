view: modab2c {
  sql_table_name: broxelco_rdg.modab2c ;;

  dimension_group: fecha {
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
    sql: ${TABLE}.Fecha ;;
  }

  dimension: id_nivel_de_cuenta {
    type: number
    sql: ${TABLE}.IdNivelDeCuenta ;;
  }

  dimension: importe_pesos {
    type: number
    sql: ${TABLE}.ImportePesos ;;
  }

  dimension: num_cuentas {
    type: number
    sql: ${TABLE}.num_cuentas ;;
  }

  dimension: num_trans {
    type: number
    sql: ${TABLE}.NUM_TRANS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
