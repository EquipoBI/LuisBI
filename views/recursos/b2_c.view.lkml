view: b2_c {
  sql_table_name: recursos.B2C ;;

  dimension: cuentas_transaccionando {
    type: number
    sql: ${TABLE}.CuentasTransaccionando ;;
  }

  dimension: emision {
    type: number
    sql: ${TABLE}.Emision ;;
  }

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

  dimension: grupo {
    type: string
    sql: ${TABLE}.Grupo ;;
  }

  dimension: primer_pago {
    type: number
    sql: ${TABLE}.PrimerPago ;;
  }

  dimension: primer_transaccion {
    type: number
    sql: ${TABLE}.PrimerTransaccion ;;
  }

  dimension: registro {
    type: number
    sql: ${TABLE}.Registro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
