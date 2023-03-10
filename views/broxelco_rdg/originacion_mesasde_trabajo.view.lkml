view: originacion_mesasde_trabajo {
  sql_table_name: broxelco_rdg.originacionMesasdeTrabajo ;;

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: id_mesa {
    type: number
    sql: ${TABLE}.idMesa ;;
  }

  dimension: programa {
    type: string
    sql: ${TABLE}.programa ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
