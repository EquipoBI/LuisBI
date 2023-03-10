view: tarjetas_fisicas_adicionales {
  sql_table_name: broxelco_rdg.TarjetasFisicasAdicionales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: activo {
    type: string
    sql: ${TABLE}.Activo ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.Alias ;;
  }

  dimension: codigo_producto {
    type: string
    sql: ${TABLE}.CodigoProducto ;;
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

  dimension_group: fecha_baja {
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
    sql: ${TABLE}.FechaBaja ;;
  }

  dimension: id_usuario_online_broxel {
    type: number
    sql: ${TABLE}.IdUsuarioOnlineBroxel ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.NumCuenta ;;
  }

  dimension: tarjeta {
    type: string
    sql: ${TABLE}.Tarjeta ;;
  }

  dimension: tipo_ingreso {
    type: number
    sql: ${TABLE}.TipoIngreso ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
