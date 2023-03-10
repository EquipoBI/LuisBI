view: anulacion {
  sql_table_name: broxelco_rdg.Anulacion ;;

  dimension: autorizado {
    type: number
    sql: ${TABLE}.Autorizado ;;
  }

  dimension: codigo_respuesta {
    type: number
    sql: ${TABLE}.CodigoRespuesta ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}.Fecha ;;
  }

  dimension: id_anulacion {
    type: number
    sql: ${TABLE}.idAnulacion ;;
  }

  dimension: id_movimiento {
    type: number
    sql: ${TABLE}.idMovimiento ;;
  }

  dimension: id_usuario {
    type: number
    sql: ${TABLE}.idUsuario ;;
  }

  dimension: num_autorizacion {
    type: number
    sql: ${TABLE}.NumAutorizacion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
