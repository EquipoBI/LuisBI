view: recursos_pagos_b2c {
  sql_table_name: recursos.pagos_b2c ;;

  dimension: bandera {
    type: string
    sql: ${TABLE}.Bandera ;;
  }

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

  dimension: num_pagos {
    type: number
    sql: ${TABLE}.num_pagos ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: producto_pag {
    type: string
    sql: ${TABLE}.producto_pag ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
