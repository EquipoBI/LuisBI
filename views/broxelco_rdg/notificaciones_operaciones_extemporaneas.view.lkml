view: notificaciones_operaciones_extemporaneas {
  sql_table_name: broxelco_rdg.NotificacionesOperacionesExtemporaneas ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension_group: fecha_de_registro_de_la_operacion {
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
    sql: ${TABLE}.FechaDeRegistroDeLaOperacion ;;
  }

  dimension: id_authorization {
    type: string
    sql: ${TABLE}.IdAuthorization ;;
  }

  dimension: id_transaction {
    type: string
    sql: ${TABLE}.IdTransaction ;;
  }

  dimension: nota {
    type: string
    sql: ${TABLE}.Nota ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
