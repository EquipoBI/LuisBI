view: log_mensual_b2c {
  sql_table_name: broxelco_rdg.log_mensual_b2c ;;

  dimension: clientes_activos {
    type: string
    sql: ${TABLE}.ClientesActivos ;;
  }

  dimension: clientes_bajas {
    type: string
    sql: ${TABLE}.ClientesBajas ;;
  }

  dimension: clientes_inactivos {
    type: string
    sql: ${TABLE}.ClientesInactivos ;;
  }

  dimension: cuentas_activos {
    type: string
    sql: ${TABLE}.CuentasActivos ;;
  }

  dimension: cuentas_bajas {
    type: string
    sql: ${TABLE}.CuentasBajas ;;
  }

  dimension: cuentas_inactivos {
    type: string
    sql: ${TABLE}.CuentasInactivos ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: monto_activos {
    type: string
    sql: ${TABLE}.MontoActivos ;;
  }

  dimension: monto_bajas {
    type: string
    sql: ${TABLE}.MontoBajas ;;
  }

  dimension: monto_inactivos {
    type: string
    sql: ${TABLE}.MontoInactivos ;;
  }

  dimension: operaciones_activos {
    type: string
    sql: ${TABLE}.OperacionesActivos ;;
  }

  dimension: operaciones_bajas {
    type: string
    sql: ${TABLE}.OperacionesBajas ;;
  }

  dimension: operaciones_inactivos {
    type: string
    sql: ${TABLE}.OperacionesInactivos ;;
  }

  dimension: productos_activos {
    type: string
    sql: ${TABLE}.ProductosActivos ;;
  }

  dimension: productos_bajas {
    type: string
    sql: ${TABLE}.ProductosBajas ;;
  }

  dimension: productos_inactivos {
    type: string
    sql: ${TABLE}.ProductosInactivos ;;
  }

  dimension: usuarios_activos {
    type: string
    sql: ${TABLE}.UsuariosActivos ;;
  }

  dimension: usuarios_bajas {
    type: string
    sql: ${TABLE}.UsuariosBajas ;;
  }

  dimension: usuarios_inactivos {
    type: string
    sql: ${TABLE}.UsuariosInactivos ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
