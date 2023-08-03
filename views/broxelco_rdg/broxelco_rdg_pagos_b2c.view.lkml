view: broxelco_rdg_pagos_b2c {
  sql_table_name: broxelco_rdg.pagos_b2c ;;

  dimension: canal {
    type: string
    sql: ${TABLE}.Canal ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.Cuenta ;;
  }

  dimension: estado_operativo {
    type: string
    sql: ${TABLE}.EstadoOperativo ;;
  }

  dimension_group: fecha_registro {
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
    sql: ${TABLE}.FechaRegistro ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.Grupo ;;
  }

  dimension: monto_pago {
    type: number
    sql: ${TABLE}.MontoPago ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
