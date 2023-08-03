view: soporte_gm_detalle_ticket {
  sql_table_name: broxelco_rdg.Soporte_GM_DetalleTicket ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: archivos {
    type: string
    sql: ${TABLE}.Archivos ;;
  }

  dimension: comentario {
    type: string
    sql: ${TABLE}.Comentario ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
  }

  dimension_group: fecha_comentario {
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
    sql: ${TABLE}.FechaComentario ;;
  }

  dimension: folio {
    type: string
    sql: ${TABLE}.Folio ;;
  }

  dimension: id_categoria {
    type: number
    sql: ${TABLE}.IdCategoria ;;
  }

  dimension: id_estatus {
    type: number
    sql: ${TABLE}.IdEstatus ;;
  }

  dimension: id_prioridad {
    type: number
    sql: ${TABLE}.IdPrioridad ;;
  }

  dimension: id_ticket {
    type: number
    sql: ${TABLE}.IdTicket ;;
  }

  dimension: id_tipo {
    type: number
    sql: ${TABLE}.IdTipo ;;
  }

  dimension: id_usuario_asignado {
    type: number
    sql: ${TABLE}.IdUsuarioAsignado ;;
  }

  dimension: usuario_comentario {
    type: string
    sql: ${TABLE}.UsuarioComentario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
