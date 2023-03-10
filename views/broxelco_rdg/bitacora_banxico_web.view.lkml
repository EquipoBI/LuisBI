view: bitacora_banxico_web {
  sql_table_name: broxelco_rdg.BitacoraBanxicoWeb ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }

  dimension: autorizacion {
    type: string
    sql: ${TABLE}.autorizacion ;;
  }

  dimension: codigo_respuesta {
    type: string
    sql: ${TABLE}.codigoRespuesta ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension_group: fecha_hora {
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
    sql: ${TABLE}.fechaHora ;;
  }

  dimension: num_tarjeta {
    type: string
    sql: ${TABLE}.numTarjeta ;;
  }

  dimension: resultado {
    type: string
    sql: ${TABLE}.resultado ;;
  }

  dimension: user_response {
    type: string
    sql: ${TABLE}.userResponse ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
