view: ind_pagos {
  sql_table_name: broxelco_rdg.ind_pagos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.Canal ;;
  }

  dimension: extra {
    type: string
    sql: ${TABLE}.EXTRA ;;
  }

  dimension_group: fecha_pago {
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
    sql: ${TABLE}.FechaPago ;;
  }

  dimension_group: fecha_ult_act {
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
    sql: ${TABLE}.FechaUltAct ;;
  }

  dimension_group: importado {
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
    sql: ${TABLE}.Importado ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.NumCuenta ;;
  }

  dimension: num_tarjeta {
    type: string
    sql: ${TABLE}.NumTarjeta ;;
  }

  dimension: pago_automatico {
    type: number
    sql: ${TABLE}.PagoAutomatico ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: ref_univ_de43 {
    type: string
    sql: ${TABLE}.RefUnivDE43 ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
