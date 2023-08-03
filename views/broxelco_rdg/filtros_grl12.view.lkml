view: filtros_grl12 {
  sql_table_name: broxelco_rdg.FiltrosGRL12 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: clasificacion_cliente {
    type: string
    sql: ${TABLE}.ClasificacionCliente ;;
  }

  dimension: clasificacion_ctes_broxel {
    type: string
    sql: ${TABLE}.ClasificacionCtesBroxel ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.Clave_Cliente ;;
  }

  dimension: clave_grupo_cliente {
    type: string
    sql: ${TABLE}.ClaveGrupoCliente ;;
  }

  dimension: clientes {
    type: string
    sql: ${TABLE}.Clientes ;;
  }

  dimension: cohorte {
    type: string
    sql: ${TABLE}.Cohorte ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.Cuenta ;;
  }

  dimension: fecha {
    type: string
    sql: ${TABLE}.Fecha ;;
  }

  dimension: fecha_h {
    type: string
    sql: ${TABLE}.FechaH ;;
  }

  dimension: importe_pesos {
    type: number
    sql: ${TABLE}.ImportePesos ;;
  }

  dimension: monto_intercambio {
    type: number
    sql: ${TABLE}.MontoIntercambio ;;
  }

  dimension: nombre_grupo_cliente {
    type: string
    sql: ${TABLE}.NombreGrupoCliente ;;
  }

  dimension: operaciones {
    type: number
    sql: ${TABLE}.Operaciones ;;
  }

  dimension: procesador {
    type: string
    sql: ${TABLE}.Procesador ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: productos {
    type: string
    sql: ${TABLE}.Productos ;;
  }

  dimension: tipo_movimiento {
    type: string
    sql: ${TABLE}.TipoMovimiento ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
