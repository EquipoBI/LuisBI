view: log_envio_sms {
  sql_table_name: broxelco_rdg.log_envio_sms ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.Celular ;;
  }

  dimension: codigo_respuesta_quibas {
    type: number
    sql: ${TABLE}.CodigoRespuestaQuibas ;;
  }

  dimension_group: fecha_hora_creacion {
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
    sql: ${TABLE}.FechaHoraCreacion ;;
  }

  dimension: host_quibas {
    type: string
    sql: ${TABLE}.HostQuibas ;;
  }

  dimension: mensaje {
    type: string
    sql: ${TABLE}.Mensaje ;;
  }

  dimension: mensaje_quibas {
    type: string
    sql: ${TABLE}.MensajeQuibas ;;
  }

  dimension: tipo_log {
    type: string
    sql: ${TABLE}.TipoLog ;;
  }

  dimension: user_quibas {
    type: string
    sql: ${TABLE}.UserQuibas ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
