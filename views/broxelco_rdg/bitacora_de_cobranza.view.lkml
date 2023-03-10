view: bitacora_de_cobranza {
  sql_table_name: broxelco_rdg.bitacora_de_cobranza ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accion_sigueinte {
    type: string
    sql: ${TABLE}.accion_sigueinte ;;
  }

  dimension: agente {
    type: string
    sql: ${TABLE}.agente ;;
  }

  dimension: archivo_audio {
    type: string
    sql: ${TABLE}.archivo_audio ;;
  }

  dimension: banco {
    type: string
    sql: ${TABLE}.banco ;;
  }

  dimension: escucha {
    type: string
    sql: ${TABLE}.escucha ;;
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
    sql: ${TABLE}.fecha ;;
  }

  dimension_group: fecha_de_pago {
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
    sql: ${TABLE}.fecha_de_pago ;;
  }

  dimension_group: hora {
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
    sql: ${TABLE}.hora ;;
  }

  dimension_group: hora_start {
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
    sql: ${TABLE}.hora_start ;;
  }

  dimension: marca_supervisor {
    type: string
    sql: ${TABLE}.marca_supervisor ;;
  }

  dimension: monto_depositado {
    type: number
    sql: ${TABLE}.monto_depositado ;;
  }

  dimension: num_cred {
    type: string
    sql: ${TABLE}.num_cred ;;
  }

  dimension: num_referencia {
    type: string
    sql: ${TABLE}.num_referencia ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
