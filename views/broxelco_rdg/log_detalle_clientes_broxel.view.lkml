view: log_detalle_clientes_broxel {
  sql_table_name: broxelco_rdg.LogDetalleClientesBroxel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: campo_afectado {
    type: string
    sql: ${TABLE}.CampoAfectado ;;
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

  dimension: id_detalle_clientes_broxel {
    type: number
    sql: ${TABLE}.IdDetalleClientesBroxel ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: motivo {
    type: string
    sql: ${TABLE}.Motivo ;;
  }

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.UsuarioCreacion ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
