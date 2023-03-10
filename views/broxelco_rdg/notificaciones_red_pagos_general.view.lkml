view: notificaciones_red_pagos_general {
  sql_table_name: broxelco_rdg.NotificacionesRedPagosGeneral ;;

  dimension: cantidad_aplicada {
    type: number
    sql: ${TABLE}.CantidadAplicada ;;
  }

  dimension: cantidad_recibida {
    type: number
    sql: ${TABLE}.CantidadRecibida ;;
  }

  dimension: estatus_general {
    type: string
    sql: ${TABLE}.EstatusGeneral ;;
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

  dimension: monto_aplicado {
    type: number
    sql: ${TABLE}.MontoAplicado ;;
  }

  dimension: monto_recibido {
    type: number
    sql: ${TABLE}.MontoRecibido ;;
  }

  dimension: tipo_aplicado {
    type: string
    sql: ${TABLE}.TipoAplicado ;;
  }

  dimension: tipo_recibido {
    type: string
    sql: ${TABLE}.TipoRecibido ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
