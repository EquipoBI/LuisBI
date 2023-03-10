view: movimientos_clientes {
  sql_table_name: broxelco_rdg.MovimientosClientes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: codigo_comision {
    type: string
    sql: ${TABLE}.CodigoComision ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
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
    sql: ${TABLE}.FechaHora ;;
  }

  dimension: folio_dispersion {
    type: string
    sql: ${TABLE}.FolioDispersion ;;
  }

  dimension: id_comision {
    type: number
    sql: ${TABLE}.IdComision ;;
  }

  dimension: id_detalle_cliente {
    type: number
    sql: ${TABLE}.IdDetalleCliente ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.IVA ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: sub_total {
    type: number
    sql: ${TABLE}.SubTotal ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
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
