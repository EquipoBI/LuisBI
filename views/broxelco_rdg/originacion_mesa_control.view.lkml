view: originacion_mesa_control {
  sql_table_name: broxelco_rdg.originacionMesaControl ;;

  dimension: id_mesa_control {
    type: number
    sql: ${TABLE}.idMesaControl ;;
  }

  dimension: tipo_accion {
    type: string
    sql: ${TABLE}.tipoAccion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
