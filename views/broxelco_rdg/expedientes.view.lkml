view: expedientes {
  sql_table_name: broxelco_rdg.Expedientes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: credito {
    type: string
    sql: ${TABLE}.Credito ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
  }

  dimension_group: fecha_alta {
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
    sql: ${TABLE}.FechaAlta ;;
  }

  dimension_group: fecha_envio_revision {
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
    sql: ${TABLE}.FechaEnvioRevision ;;
  }

  dimension_group: fecha_respuesta {
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
    sql: ${TABLE}.FechaRespuesta ;;
  }

  dimension: id_usuario_alta {
    type: number
    sql: ${TABLE}.idUsuarioAlta ;;
  }

  dimension: motivo {
    type: string
    sql: ${TABLE}.Motivo ;;
  }

  dimension: movil {
    type: string
    sql: ${TABLE}.Movil ;;
  }

  dimension: nombre_expediente {
    type: string
    sql: ${TABLE}.NombreExpediente ;;
  }

  dimension: usuario_respuesta {
    type: string
    sql: ${TABLE}.UsuarioRespuesta ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
